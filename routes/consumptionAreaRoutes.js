const express = require('express');
const router = express.Router();
const consumptionAreaController = require('../controllers/consumptionAreaController');

router.get('/', consumptionAreaController.getAllConsumptionAreas);
router.get('/:id', consumptionAreaController.getConsumptionAreaById);
router.post('/', consumptionAreaController.createConsumptionArea);
router.put('/:id', consumptionAreaController.updateConsumptionArea);
router.delete('/:id', consumptionAreaController.deleteConsumptionArea);

module.exports = router;