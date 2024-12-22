
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// Function to get all answers
const getAllAnswers = async (req, res) => {
  try {
    const answers = await prisma.answer.findMany();
    res.json(answers);
  } catch (error) {
    console.error('Error fetching answers:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get an answer by ID
const getAnswerById = async (req, res) => {
  try {
    const answer = await prisma.answer.findUnique({
      where: { id: parseInt(req.params.id) }
    });
    if (!answer) {
      return res.status(404).json({ message: 'Answer not found' });
    }
    res.json(answer);
  } catch (error) {
    console.error('Error fetching answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to create a new answer
const createAnswer = async (req, res) => {
  try {
    const { questionId, answer, userId } = req.body;
    const newAnswer = await prisma.answer.create({
      data: {
        answer,
        questionId: parseInt(questionId),
        userId: parseInt(userId)
      }
    });
    res.status(201).json(newAnswer);
  } catch (error) {
    console.error('Error creating answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to update an answer
const updateAnswer = async (req, res) => {
  try {
    const { answer } = req.body;
    const updatedAnswer = await prisma.answer.update({
      where: { id: parseInt(req.params.id) },
      data: { answer }
    });
    res.json(updatedAnswer);
  } catch (error) {
    console.error('Error updating answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to delete an answer
const deleteAnswer = async (req, res) => {
  try {
    await prisma.answer.delete({
      where: { id: parseInt(req.params.id) }
    });
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = {
  getAllAnswers,
  getAnswerById,
  createAnswer,
  updateAnswer,
  deleteAnswer
};
