PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE lessons (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            content TEXT NOT NULL,
            sort_order INTEGER DEFAULT 0);
CREATE TABLE dictionary (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            amanikipaasi TEXT NOT NULL,
            english TEXT NOT NULL,
            pos TEXT NOT NULL);
CREATE TABLE phrases (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            content TEXT NOT NULL);
CREATE TABLE quiz (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            question TEXT NOT NULL,
            option_a TEXT NOT NULL,
            option_b TEXT NOT NULL,
            option_c TEXT NOT NULL,
            option_d TEXT NOT NULL,
            correct_answer TEXT NOT NULL);
COMMIT;
