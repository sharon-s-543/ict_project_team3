function checkAnswers() {
    let score = 0;
    let blocks = document.querySelectorAll('.quiz-block');
    let reviewHTML = "<h3>Review Your Answers:</h3>";
    
    blocks.forEach((block, index) => {
        let questionText = block.querySelector('.quiz-question').innerText;
        let correctAnswerLetter = block.getAttribute('data-correct');
        let selectedInput = block.querySelector('input[type="radio"]:checked');
        
        // Find text descriptions matching the keys
        let correctAnswerText = block.querySelector(`input[value="${correctAnswerLetter}"]`).getAttribute('data-text');
        let userAnswerText = selectedInput ? selectedInput.getAttribute('data-text') : "No answer selected";
        let userAnswerLetter = selectedInput ? selectedInput.value : "None";
        
        let isCorrect = (userAnswerLetter === correctAnswerLetter);
        if (isCorrect) {
            score++;
        }
        
        // Build the review card layout with color-coded classes
        reviewHTML += `
            <div class="review-card ${isCorrect ? 'correct-card' : 'wrong-card'}">
                <p><strong>${questionText}</strong> <span class="badge">${isCorrect ? '✓ Right' : '✗ Wrong'}</span></p>
                <p><strong>Your Answer:</strong> ${userAnswerLetter}) ${userAnswerText}</p>
                ${!isCorrect ? `<p><strong>Correct Answer:</strong> ${correctAnswerLetter}) ${correctAnswerText}</p>` : ''}
            </div>
        `;
    });
    
    // Update score text
    document.getElementById('quizResultText').innerText = "Your Score: " + score + " / " + blocks.length;
    
    // Inject the review items
    document.getElementById('reviewList').innerHTML = reviewHTML;
    
    // Hide the quiz, show the results screen smooth animation transition ready
    document.getElementById('quizContainer').style.display = 'none';
    document.getElementById('resultsContainer').style.display = 'block';
    
    // Scroll smoothly back to top of page to see the score banner
    window.scrollTo({top: 0, behavior: 'smooth'});
}
