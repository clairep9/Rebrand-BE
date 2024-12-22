const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// Function to get all property types
const getAllPropertyTypes = async (req, res) => {
  try {
    const propertyTypes = await prisma.propertyType.findMany();
    res.json(propertyTypes);
  } catch (error) {
    console.error('Error fetching property types:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get a property type by ID
const getPropertyTypeById = async (req, res) => {
  try {
    const propertyType = await prisma.propertyType.findUnique({
      where: { id: parseInt(req.params.id) }
    });
    if (!propertyType) {
      return res.status(404).json({ message: 'Property type not found' });
    }
    res.json(propertyType);
  } catch (error) {
    console.error('Error fetching property type:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to create a new property type
const createPropertyType = async (req, res) => {
  try {
    const { name } = req.body;
    const newPropertyType = await prisma.propertyType.create({
      data: { name }
    });
    res.status(201).json(newPropertyType);
  } catch (error) {
    console.error('Error creating property type:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to update a property type
const updatePropertyType = async (req, res) => {
  try {
    const { name } = req.body;
    const updatedPropertyType = await prisma.propertyType.update({
      where: { id: parseInt(req.params.id) },
      data: { name }
    });
    res.json(updatedPropertyType);
  } catch (error) {
    console.error('Error updating property type:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to delete a property type
const deletePropertyType = async (req, res) => {
  try {
    await prisma.propertyType.delete({
      where: { id: parseInt(req.params.id) }
    });
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting property type:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

//Function to fetch all answers from all consumption areas of a specific property type
const getAnswersByPropertyType = async (req, res) => {
  try {
    const propertyTypeId = parseInt(req.params.id);
    
    const answers = await prisma.propertyType.findUnique({
      where: { id: propertyTypeId },
      include: {
        consumptionAreas: {
          include: {
            questions: {
              include: {
                answers: true
              }
            }
          }
        }
      }
    });

    if (!answers) {
      return res.status(404).json({ message: 'Property type not found' });
    }
    
    res.json(answers);
  } catch (error) {
    console.error('Error fetching answers by property type:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = {
  getAllPropertyTypes,
  getPropertyTypeById,
  createPropertyType,
  updatePropertyType,
  deletePropertyType,
  getAnswersByPropertyType
};