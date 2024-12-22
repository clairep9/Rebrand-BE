const { PrismaClient } = require('@prisma/client');
const userResponseController = require('../../controllers/userResponseController');

// Mock PrismaClient
jest.mock('@prisma/client', () => {
  const mockCreate = jest.fn();
  const mockFindMany = jest.fn();
  const mockFindFirst = jest.fn();
  const mockUpdateMany = jest.fn();
  const mockDeleteMany = jest.fn();
  return {
    PrismaClient: jest.fn().mockImplementation(() => ({
      answer: {
        create: mockCreate,
        findMany: mockFindMany,
        findFirst: mockFindFirst,
        updateMany: mockUpdateMany,
        deleteMany: mockDeleteMany,
      },
    })),
  };
});

describe('userResponseController', () => {
  let mockReq;
  let mockRes;
  let prisma;

  beforeEach(() => {
    mockReq = {
      body: {},
      params: {},
    };
    mockRes = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
      send: jest.fn(),
    };
    prisma = new PrismaClient();
  });

  describe('createUserResponse', () => {
    it('should create a new user response', async () => {
      const mockResponse = { id: 1, answer: 'Test Answer', userId: 1, questionId: 1 };
      mockReq.body = { userId: '1', questionId: '1', answer: 'Test Answer' };
      prisma.answer.create.mockResolvedValue(mockResponse);

      await userResponseController.createUserResponse(mockReq, mockRes);

      expect(prisma.answer.create).toHaveBeenCalledWith({
        data: {
          answer: 'Test Answer',
          user: { connect: { id: 1 } },
          question: { connect: { id: 1 } }
        }
      });
      expect(mockRes.status).toHaveBeenCalledWith(201);
      expect(mockRes.json).toHaveBeenCalledWith(mockResponse);
    });
  });

  describe('getResponsesByUserId', () => {
    it('should get responses by user ID', async () => {
      const mockResponses = [{ id: 1, answer: 'Test Answer', questionId: 1 }];
      mockReq.params = { userId: '1' };
      prisma.answer.findMany.mockResolvedValue(mockResponses);

      await userResponseController.getResponsesByUserId(mockReq, mockRes);

      expect(prisma.answer.findMany).toHaveBeenCalledWith({
        where: { userId: 1 },
        include: { question: true }
      });
      expect(mockRes.json).toHaveBeenCalledWith(mockResponses);
    });
  });

  describe('getResponsesByQuestionId', () => {
    it('should get responses by question ID', async () => {
      const mockResponses = [{ id: 1, answer: 'Test Answer', userId: 1 }];
      mockReq.params = { questionId: '1' };
      prisma.answer.findMany.mockResolvedValue(mockResponses);

      await userResponseController.getResponsesByQuestionId(mockReq, mockRes);

      expect(prisma.answer.findMany).toHaveBeenCalledWith({
        where: { questionId: 1 },
        include: { user: true }
      });
      expect(mockRes.json).toHaveBeenCalledWith(mockResponses);
    });
  });

  describe('getUserResponseByUserAndQuestionId', () => {
    it('should get a specific response by user ID and question ID', async () => {
      const mockResponse = { id: 1, answer: 'Test Answer', userId: 1, questionId: 1 };
      mockReq.params = { userId: '1', questionId: '1' };
      prisma.answer.findFirst.mockResolvedValue(mockResponse);

      await userResponseController.getUserResponseByUserAndQuestionId(mockReq, mockRes);

      expect(prisma.answer.findFirst).toHaveBeenCalledWith({
        where: { userId: 1, questionId: 1 },
        include: { question: true, user: true }
      });
      expect(mockRes.json).toHaveBeenCalledWith(mockResponse);
    });

    it('should return 404 if response is not found', async () => {
      mockReq.params = { userId: '1', questionId: '1' };
      prisma.answer.findFirst.mockResolvedValue(null);

      await userResponseController.getUserResponseByUserAndQuestionId(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(404);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Response not found' });
    });
  });

  describe('updateUserResponse', () => {
    it('should update a user response', async () => {
      mockReq.params = { userId: '1', questionId: '1' };
      mockReq.body = { answer: 'Updated Answer' };
      prisma.answer.updateMany.mockResolvedValue({ count: 1 });

      await userResponseController.updateUserResponse(mockReq, mockRes);

      expect(prisma.answer.updateMany).toHaveBeenCalledWith({
        where: { userId: 1, questionId: 1 },
        data: { answer: 'Updated Answer' }
      });
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Response updated successfully' });
    });

    it('should return 404 if response to update is not found', async () => {
      mockReq.params = { userId: '1', questionId: '1' };
      mockReq.body = { answer: 'Updated Answer' };
      prisma.answer.updateMany.mockResolvedValue({ count: 0 });

      await userResponseController.updateUserResponse(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(404);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Response not found' });
    });
  });

  describe('deleteUserResponse', () => {
    it('should delete a user response', async () => {
      mockReq.params = { userId: '1', questionId: '1' };
      prisma.answer.deleteMany.mockResolvedValue({ count: 1 });

      await userResponseController.deleteUserResponse(mockReq, mockRes);

      expect(prisma.answer.deleteMany).toHaveBeenCalledWith({
        where: { userId: 1, questionId: 1 }
      });
      expect(mockRes.status).toHaveBeenCalledWith(204);
      expect(mockRes.send).toHaveBeenCalled();
    });

    it('should return 404 if response to delete is not found', async () => {
      mockReq.params = { userId: '1', questionId: '1' };
      prisma.answer.deleteMany.mockResolvedValue({ count: 0 });

      await userResponseController.deleteUserResponse(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(404);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Response not found' });
    });
  });
});
