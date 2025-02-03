const db = require("../db/index");


const getAllEnergyUsageAreas = async () => {
    try {
        const areas = await db.any('SELECT id, area_name FROM energy_usage_areas');
        return areas;
    } catch (error) {
        console.error('Error fetching energy usage areas:', error);
        throw new Error('Could not retrieve energy usage areas. Please try again later.');
    }
}

const getQuestionsByEnergyUsageAreaId = async (areaId) => {
    try {
        const questions = await db.any('SELECT id, question_text FROM energy_usage_areas_questions WHERE area_id=$1', [areaId]);
        return questions;
    } catch (error) {
        console.error('Error fetching questions for energy usage area:', error);
        throw new Error('Could not retrieve questions. Please try again later.');
    }
}

const getValidChoicesByQuestionId = async (questionId) => {
    try {
        const question = await db.one('SELECT valid_choices FROM energy_usage_areas_questions WHERE id=$1', [questionId]);
        return question.valid_choices; 
    } catch (error) {
        console.error('Error fetching valid choices for question:', error);
        throw new Error('Could not retrieve valid choices. Please try again later.');
    }
}


const getAllEnergyUsageAnswersByUserId = async (userUuid) => {
    try {
        const answers = await db.any('SELECT * FROM energy_usage_areas_answers WHERE user_uuid=$1', [userUuid]);
        return answers;
    } catch (error) {
        console.error('Error fetching energy usage answers:', error);
        throw new Error('Could not retrieve energy usage answers. Please try again later.');
    }
}

const createEnergyUsageAnswer = async (userUuid, questionId, answer) => {
    try {
        const newAnswer = await db.one('INSERT INTO energy_usage_areas_answers (user_uuid, question_id, answer) VALUES ($1, $2, $3) RETURNING *', [userUuid, questionId, answer]);
        return newAnswer;
    } catch (error) {
        console.error('Error creating new energy usage answer:', error);
        throw new Error('Could not create new answer. Please try again later.');
    }
}

const updateEnergyUsageAnswer = async (answerId, userUuid, newAnswer) => {
    try {
        const updatedAnswer = await db.one('UPDATE energy_usage_areas_answers SET answer = $1 WHERE id = $2 AND user_uuid = $3 RETURNING *', [newAnswer, answerId, userUuid]);
        return updatedAnswer;
    } catch (error) {
        console.error('Error updating energy usage answer:', error);
        throw new Error('Could not update answer. Please try again later.');
    }
}

const deleteEnergyUsageAnswer = async (answerId, userUuid) => {
    try {
        const deletedAnswer = await db.result('DELETE FROM energy_usage_areas_answers WHERE id = $1 AND user_uuid = $2', [answerId, userUuid]);
        return deletedAnswer.rowCount;  
    } catch (error) {
        console.error('Error deleting energy usage answer:', error);
        throw new Error('Could not delete answer. Please try again later.');
    }
}


module.exports = {  
    getAllEnergyUsageAreas,
    getQuestionsByEnergyUsageAreaId,
    getValidChoicesByQuestionId,
    getAllEnergyUsageAnswersByUserId,
    createEnergyUsageAnswer,
    updateEnergyUsageAnswer,
    deleteEnergyUsageAnswer
    
}