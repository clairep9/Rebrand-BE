const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

// Sign up a new user
router.post('/signup', userController.createUser);

// Sign in an existing user
router.post('/signin', userController.signIn);

//Gets user responses by user ID
router.get('/responses/:userId', userController.getUserResponses);

// Get a user by ID
router.get('/:id', userController.getUserById);



module.exports = router;
