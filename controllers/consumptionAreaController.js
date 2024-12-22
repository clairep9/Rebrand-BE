const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// Function to get all consumption areas
const getAllConsumptionAreas = async (req, res) => {
  try {
    const consumptionAreas = await prisma.consumptionArea.findMany();
    res.json(consumptionAreas);
  } catch (error) {
    console.error('Error fetching consumption areas:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get a consumption area by ID
const getConsumptionAreaById = async (req, res) => {
  try {
    const consumptionArea = await prisma.consumptionArea.findUnique({
      where: { id: parseInt(req.params.id) }
    });
    if (!consumptionArea) {
      return res.status(404).json({ message: 'Consumption area not found' });
    }
    res.json(consumptionArea);
  } catch (error) {
    console.error('Error fetching consumption area:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to create a new consumption area
const createConsumptionArea = async (req, res) => {
  try {
    const { name, propertyTypeId } = req.body;
    const newConsumptionArea = await prisma.consumptionArea.create({
      data: {
        name,
        propertyTypeId: parseInt(propertyTypeId)
      }
    });
    res.status(201).json(newConsumptionArea);
  } catch (error) {
    console.error('Error creating consumption area:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to update a consumption area
const updateConsumptionArea = async (req, res) => {
  try {
    const { name } = req.body;
    const updatedConsumptionArea = await prisma.consumptionArea.update({
      where: { id: parseInt(req.params.id) },
      data: { name }
    });
    res.json(updatedConsumptionArea);
  } catch (error) {
    console.error('Error updating consumption area:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to delete a consumption area
const deleteConsumptionArea = async (req, res) => {
  try {
    await prisma.consumptionArea.delete({
      where: { id: parseInt(req.params.id) }
    });
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting consumption area:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = {
  getAllConsumptionAreas,
  getConsumptionAreaById,
  createConsumptionArea,
  updateConsumptionArea,
  deleteConsumptionArea
};
