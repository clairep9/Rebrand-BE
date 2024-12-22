const express = require('express');
const router = express.Router();
const propertySpecificQuestionController = require('../controllers/propertySpecificQuestionController');

router.get('/', propertySpecificQuestionController.getAllPropertySpecificQuestions);
router.get('/:id', propertySpecificQuestionController.getPropertySpecificQuestionById);
router.post('/', propertySpecificQuestionController.createPropertySpecificQuestion);
router.put('/:id', propertySpecificQuestionController.updatePropertySpecificQuestion);
router.delete('/:id', propertySpecificQuestionController.deletePropertySpecificQuestion);

module.exports = router;
