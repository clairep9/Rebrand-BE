const { PrismaClient } = require('@prisma/client');
const answerController = require('../../controllers/answerController');

// Mock PrismaClient
jest.mock('@prisma/client', () => {
  const mockFindMany = jest.fn();
  const mockFindUnique = jest.fn();
  const mockCreate = jest.fn();
  const mockUpdate = jest.fn();
  const mockDelete = jest.fn();
  return {
    PrismaClient: jest.fn().mockImplementation(() => ({
      answer: {
        findMany: mockFindMany,
        findUnique: mockFindUnique,
        create: mockCreate,
        update: mockUpdate,
        delete: mockDelete,
      },
    })),
  };
});

describe('answerController', () => {
  let mockReq;
  let mockRes;
  let prisma;

  beforeEach(() => {
    mockReq = {
      body: {},
      params: {},
    };
    mockRes = {
      json: jest.fn(),
      status: jest.fn().mockReturnThis(),
    };
    prisma = new PrismaClient();
  });

  describe('getAllAnswers', () => {
    it('should return all answers', async () => {
      const mockAnswers = [{ id: 1, answer: 'Test Answer' }];
      prisma.answer.findMany.mockResolvedValue(mockAnswers);

      await answerController.getAllAnswers(mockReq, mockRes);

      expect(prisma.answer.findMany).toHaveBeenCalled();
      expect(mockRes.json).toHaveBeenCalledWith(mockAnswers);
    });

    it('should handle errors', async () => {
      prisma.answer.findMany.mockRejectedValue(new Error('Database error'));

      await answerController.getAllAnswers(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(500);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Server error' });
    });
  });

  describe('getAnswerById', () => {
    it('should return an answer by ID', async () => {
      const mockAnswer = { id: 1, answer: 'Test Answer' };
      mockReq.params.id = '1';
      prisma.answer.findUnique.mockResolvedValue(mockAnswer);

      await answerController.getAnswerById(mockReq, mockRes);

      expect(prisma.answer.findUnique).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(mockRes.json).toHaveBeenCalledWith(mockAnswer);
    });

    it('should return 404 if answer not found', async () => {
      mockReq.params.id = '999';
      prisma.answer.findUnique.mockResolvedValue(null);

      await answerController.getAnswerById(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(404);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Answer not found' });
    });
  });

  describe('createAnswer', () => {
    it('should create a new answer', async () => {
      const mockNewAnswer = { id: 1, answer: 'New Answer', questionId: 1, userId: 1 };
      mockReq.body = { answer: 'New Answer', questionId: '1', userId: '1' };
      prisma.answer.create.mockResolvedValue(mockNewAnswer);

      await answerController.createAnswer(mockReq, mockRes);

      expect(prisma.answer.create).toHaveBeenCalledWith({
        data: {
          answer: 'New Answer',
          questionId: 1,
          userId: 1
        }
      });
      expect(mockRes.status).toHaveBeenCalledWith(201);
      expect(mockRes.json).toHaveBeenCalledWith(mockNewAnswer);
    });
  });

  describe('updateAnswer', () => {
    it('should update an existing answer', async () => {
      const mockUpdatedAnswer = { id: 1, answer: 'Updated Answer' };
      mockReq.params.id = '1';
      mockReq.body = { answer: 'Updated Answer' };
      prisma.answer.update.mockResolvedValue(mockUpdatedAnswer);

      await answerController.updateAnswer(mockReq, mockRes);

      expect(prisma.answer.update).toHaveBeenCalledWith({
        where: { id: 1 },
        data: { answer: 'Updated Answer' }
      });
      expect(mockRes.json).toHaveBeenCalledWith(mockUpdatedAnswer);
    });
  });

  describe('deleteAnswer', () => {
    it('should delete an answer', async () => {
      mockReq.params.id = '1';
      prisma.answer.delete.mockResolvedValue({});

      await answerController.deleteAnswer(mockReq, mockRes);

      expect(prisma.answer.delete).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(mockRes.status).toHaveBeenCalledWith(204);
    });
  });
});
