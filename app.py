import os
import random
from flask import Flask, render_template, request, redirect, url_for, session, flash
import sqlite3

app = Flask(__name__)
app.secret_key = 'super_secret_flash_key'
ADMIN_PASSWORD = "Hydrophis_belcheri"   # admin password 

DATABASE = 'database.db'

def get_db():
    conn = sqlite3.connect(DATABASE)
    conn.row_factory = sqlite3.Row
    return conn

# Database Initialization
def init_db():
    with get_db() as conn:
        # Lessons Table (with an order column)
        conn.execute('''CREATE TABLE IF NOT EXISTS lessons (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            content TEXT NOT NULL,
            sort_order INTEGER DEFAULT 0)''')
        
        # Dictionary Table
        conn.execute('''CREATE TABLE IF NOT EXISTS dictionary (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            amanikipaasi TEXT NOT NULL,
            english TEXT NOT NULL,
            pos TEXT NOT NULL)''')
        
        # Phrases Table
        conn.execute('''CREATE TABLE IF NOT EXISTS phrases (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            content TEXT NOT NULL)''')
        
        # Quiz Table
        conn.execute('''CREATE TABLE IF NOT EXISTS quiz (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            question TEXT NOT NULL,
            option_a TEXT NOT NULL,
            option_b TEXT NOT NULL,
            option_c TEXT NOT NULL,
            option_d TEXT NOT NULL,
            correct_answer TEXT NOT NULL)''')
        conn.commit()

# --- ROUTES ---

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/lessons')
def lessons():
    db = get_db()
    # Fetch lessons ordered by admin's custom sort_order
    all_lessons = db.execute('SELECT * FROM lessons ORDER BY sort_order ASC').fetchall()
    
    # Get specific active lesson
    lesson_id = request.args.get('lesson_id')
    active_lesson = None
    if lesson_id:
        active_lesson = db.execute('SELECT * FROM lessons WHERE id = ?', (lesson_id,)).fetchone()
    elif all_lessons:
        active_lesson = all_lessons[0] # Default to first lesson
        
    return render_template('lessons.html', lessons=all_lessons, active_lesson=active_lesson)

@app.route('/dictionary')
def dictionary():
    db = get_db()
    search = request.args.get('search', '').strip()
    
    if search:
        # Searchable in both languages
        query = "SELECT * FROM dictionary WHERE amanikipaasi LIKE ? OR english LIKE ? ORDER BY amanikipaasi ASC"
        words = db.execute(query, (f'%{search}%', f'%{search}%')).fetchall()
    else:
        # Default English alphabetical order for Amanikipaasi words
        words = db.execute('SELECT * FROM dictionary ORDER BY amanikipaasi ASC').fetchall()
        
    return render_template('dictionary.html', words=words, search=search)

@app.route('/phrases')
def phrases():
    db = get_db()
    phrase_data = db.execute('SELECT * FROM phrases ORDER BY id DESC LIMIT 1').fetchone()
    return render_template('phrases.html', phrase_data=phrase_data)

@app.route('/quiz')
def quiz():
    db = get_db()
    # Fetch all questions, shuffle them, and pick 10
    questions = db.execute('SELECT * FROM quiz').fetchall()
    questions = list(questions)
    random.shuffle(questions)
    selected_questions = questions[:10]
    return render_template('quiz.html', questions=selected_questions)

# --- ADMIN SYSTEM ---

@app.route('/admin', methods=['GET', 'POST'])
def admin():
    if request.method == 'POST':
        password = request.form.get('password')
        if password == ADMIN_PASSWORD:
            session['logged_in'] = True
            return redirect(url_for('admin_dashboard'))
        else:
            flash('Incorrect Password!')
    return render_template('admin.html', logged_in=session.get('logged_in'))

@app.route('/admin/logout')
def admin_logout():
    session.pop('logged_in', None)
    return redirect(url_for('index'))

@app.route('/admin/dashboard')
def admin_dashboard():
    if not session.get('logged_in'): return redirect(url_for('admin'))
    db = get_db()
    # Read the active tab from the URL parameters (defaults to ManageLessons)
    active_tab = request.args.get('tab', 'ManageLessons')
    
    return render_template(
        'admin_dashboard.html',
        lessons=db.execute('SELECT * FROM lessons ORDER BY sort_order ASC').fetchall(),
        words=db.execute('SELECT * FROM dictionary ORDER BY amanikipaasi ASC').fetchall(),
        phrases=db.execute('SELECT * FROM phrases ORDER BY id DESC LIMIT 1').fetchone(),
        questions=db.execute('SELECT * FROM quiz').fetchall(),
        active_tab=active_tab
    )


# --- ADMIN CRUD OPERATIONS ---

#==========lessons=========

@app.route('/admin/add_lesson', methods=['POST'])
def add_lesson():
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('INSERT INTO lessons (title, content, sort_order) VALUES (?, ?, ?)',
                     (request.form['title'], request.form['content'], request.form['sort_order']))
    return redirect(url_for('admin_dashboard', tab='ManageLessons'))

@app.route('/admin/delete_lesson/<int:id>', methods=['POST'])
def delete_lesson(id):
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('DELETE FROM lessons WHERE id = ?', (id,))
    return redirect(url_for('admin_dashboard', tab='ManageLessons'))

@app.route('/admin/edit_lesson/<int:id>', methods=['GET', 'POST'])
def edit_lesson(id):
    if not session.get('logged_in'): return redirect(url_for('admin'))
    db = get_db()
    
    if request.method == 'POST':
        with get_db() as conn:
            conn.execute('UPDATE lessons SET title = ?, content = ?, sort_order = ? WHERE id = ?',
                         (request.form['title'], request.form['content'], request.form['sort_order'], id))
        return redirect(url_for('admin_dashboard', tab='ManageLessons'))
        
    lesson = db.execute('SELECT * FROM lessons WHERE id = ?', (id,)).fetchone()
    return render_template('edit_lesson.html', lesson=lesson)

#==========words==============

@app.route('/admin/add_word', methods=['POST'])
def add_word():
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('INSERT INTO dictionary (amanikipaasi, english, pos) VALUES (?, ?, ?)',
                     (request.form['amanikipaasi'], request.form['english'], request.form['pos']))
    # Tells the template to stick to the Dictionary tab
    return redirect(url_for('admin_dashboard', tab='ManageDict'))

@app.route('/admin/delete_word/<int:id>', methods=['POST'])
def delete_word(id):
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('DELETE FROM dictionary WHERE id = ?', (id,))
    return redirect(url_for('admin_dashboard', tab='ManageDict'))

@app.route('/admin/edit_word/<int:id>', methods=['GET', 'POST'])
def edit_word(id):
    if not session.get('logged_in'): return redirect(url_for('admin'))
    db = get_db()
    
    if request.method == 'POST':
        with get_db() as conn:
            conn.execute('UPDATE dictionary SET amanikipaasi = ?, english = ?, pos = ? WHERE id = ?',
                         (request.form['amanikipaasi'], request.form['english'], request.form['pos'], id))
        return redirect(url_for('admin_dashboard', tab='ManageDict'))
        
    word = db.execute('SELECT * FROM dictionary WHERE id = ?', (id,)).fetchone()
    return render_template('edit_word.html', word=word)

#===========phrases===========

@app.route('/admin/update_phrases', methods=['POST'])
def update_phrases():
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('INSERT INTO phrases (content) VALUES (?)', (request.form['content'],))
    return redirect(url_for('admin_dashboard', tab='ManagePhrases'))

#==========questions===========

@app.route('/admin/add_question', methods=['POST'])
def add_question():
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('INSERT INTO quiz (question, option_a, option_b, option_c, option_d, correct_answer) VALUES (?, ?, ?, ?, ?, ?)',
                     (request.form['question'], request.form['option_a'], request.form['option_b'], request.form['option_c'], request.form['option_d'], request.form['correct_answer']))
    return redirect(url_for('admin_dashboard', tab='ManageQuiz'))

@app.route('/admin/delete_question/<int:id>', methods=['POST'])
def delete_question(id):
    if not session.get('logged_in'): return redirect(url_for('admin'))
    with get_db() as conn:
        conn.execute('DELETE FROM quiz WHERE id = ?', (id,))
    return redirect(url_for('admin_dashboard', tab='ManageQuiz'))

@app.route('/admin/edit_question/<int:id>', methods=['GET', 'POST'])
def edit_question(id):
    if not session.get('logged_in'): return redirect(url_for('admin'))
    db = get_db()
    
    if request.method == 'POST':
        with get_db() as conn:
            conn.execute('''UPDATE quiz SET 
                            question = ?, option_a = ?, option_b = ?, 
                            option_c = ?, option_d = ?, correct_answer = ? 
                            WHERE id = ?''',
                         (request.form['question'], request.form['option_a'], request.form['option_b'], 
                          request.form['option_c'], request.form['option_d'], request.form['correct_answer'], id))
        return redirect(url_for('admin_dashboard', tab='ManageQuiz'))
        
    question = db.execute('SELECT * FROM quiz WHERE id = ?', (id,)).fetchone()
    return render_template('edit_question.html', q=question)

#================================

if __name__ == '__main__':
    init_db()
    app.run(debug=True, host='0.0.0.0', port=5000)
