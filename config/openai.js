require('dotenv').config(); // Load environment variables
const OpenAI = require('openai');

if (!process.env.OPENAI_API_KEY) {
  throw new Error('OPENAI_API_KEY is not set in the environment variables');
}

const openai = new OpenAI({ apiKey: process.env.OPENAI_API_KEY });

module.exports = openai;
