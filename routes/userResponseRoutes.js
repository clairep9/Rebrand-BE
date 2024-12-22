const express = require('express');
const router = express.Router();
const userResponseController = require('../controllers/userResponseController');

// Route to create a new user response
router.post('/', userResponseController.createUserResponse);

// Route to get all responses for a specific user
router.get('/:userId', userResponseController.getResponsesByUserId);

// Route to get all responses for a specific question
router.get('/question/:questionId', userResponseController.getResponsesByQuestionId);

// Route to get a specific response by user ID and question ID
router.get('/:userId/question/:questionId', userResponseController.getUserResponseByUserAndQuestionId);

// Route to update a user response
router.put('/:userId/question/:questionId', userResponseController.updateUserResponse);

// Route to delete a user response
router.delete('/:userId/question/:questionId', userResponseController.deleteUserResponse);

module.exports = router;
