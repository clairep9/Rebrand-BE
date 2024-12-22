const express = require('express');
const router = express.Router();
const propertySpecificAnswerController = require('../controllers/propertySpecificAnswerController');

// Route to get all property-specific answers
router.get('/', propertySpecificAnswerController.getAllPropertySpecificAnswers);

// Route to get a property-specific answer by ID
router.get('/:id', propertySpecificAnswerController.getPropertySpecificAnswerById);

// Route to create a new property-specific answer
router.post('/', propertySpecificAnswerController.createPropertySpecificAnswer);

// Route to update an existing property-specific answer by ID
router.put('/:id', propertySpecificAnswerController.updatePropertySpecificAnswer);

// Route to delete an property-specific answer by ID
router.delete('/:id', propertySpecificAnswerController.deletePropertySpecificAnswer);


module.exports = router;