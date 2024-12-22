const express = require('express');
const router = express.Router();
const propertyTypeController = require('../controllers/propertyTypeController');

router.get('/', propertyTypeController.getAllPropertyTypes);
router.get('/:id', propertyTypeController.getPropertyTypeById);
router.post('/', propertyTypeController.createPropertyType);
router.put('/:id', propertyTypeController.updatePropertyType);
router.delete('/:id', propertyTypeController.deletePropertyType);

router.get('/:id/answers', propertyTypeController.getAnswersByPropertyType);


module.exports = router;