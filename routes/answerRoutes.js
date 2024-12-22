const express = require('express');
const router = express.Router();
const answerController = require('../controllers/answerController');

// Route to get all answers
router.get('/', answerController.getAllAnswers);

// Route to get a specific answer by ID
router.get('/:id', answerController.getAnswerById);

// Route to create a new answer
router.post('/', answerController.createAnswer);

// Route to update an existing answer by ID
router.put('/:id', answerController.updateAnswer);

// Route to delete an answer by ID
router.delete('/:id', answerController.deleteAnswer);

module.exports = router;