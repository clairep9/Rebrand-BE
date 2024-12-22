const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// Function to create a new user response
const createUserResponse = async (req, res) => {
  const { userId, questionId, answer } = req.body;
  try {
    const userResponse = await prisma.answer.create({
      data: {
        answer,
        user: { connect: { id: parseInt(userId) } },
        question: { connect: { id: parseInt(questionId) } }
      }
    });
    res.status(201).json(userResponse);
  } catch (error) {
    console.error('Error creating user response:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get responses by user ID
const getResponsesByUserId = async (req, res) => {
  try {
const firstUser = await prisma.user.findFirst()

    const responses = await prisma.answer.findMany({
      where: { userId: parseInt(firstUser.id) },
      include: { question: true }
    });
    res.json(responses);
  } catch (error) {
    console.error('Error fetching responses by user ID:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get responses by question ID
const getResponsesByQuestionId = async (req, res) => {
  try {
    const responses = await prisma.answer.findMany({
      where: { questionId: parseInt(req.params.questionId) },
      include: { user: true }
    });
    res.json(responses);
  } catch (error) {
    console.error('Error fetching responses by question ID:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get a specific response by user ID and question ID
const getUserResponseByUserAndQuestionId = async (req, res) => {
  try {
    const response = await prisma.answer.findFirst({
      where: {
        userId: parseInt(req.params.userId),
        questionId: parseInt(req.params.questionId)
      },
      include: { question: true, user: true }
    });
    if (!response) {
      return res.status(404).json({ message: 'Response not found' });
    }
    res.json(response);
  } catch (error) {
    console.error('Error fetching specific response:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to update a user response
const updateUserResponse = async (req, res) => {
  const { answer } = req.body;
  try {
    const updatedResponse = await prisma.answer.updateMany({
      where: {
        userId: parseInt(req.params.userId),
        questionId: parseInt(req.params.questionId)
      },
      data: { answer }
    });
    if (updatedResponse.count === 0) {
      return res.status(404).json({ message: 'Response not found' });
    }
    res.json({ message: 'Response updated successfully' });
  } catch (error) {
    console.error('Error updating user response:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to delete a user response
const deleteUserResponse = async (req, res) => {
  try {
    const deletedResponse = await prisma.answer.deleteMany({
      where: {
        userId: parseInt(req.params.userId),
        questionId: parseInt(req.params.questionId)
      }
    });
    if (deletedResponse.count === 0) {
      return res.status(404).json({ message: 'Response not found' });
    }
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting user response:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = {
  createUserResponse,
  getResponsesByUserId,
  getResponsesByQuestionId,
  getUserResponseByUserAndQuestionId,
  updateUserResponse,
  deleteUserResponse
};
