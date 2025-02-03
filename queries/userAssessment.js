const getAllAssessmentQuestions = async () => {
    try {
        const questions = await db.any('SELECT id, question, description FROM user_assessment_questions');
        return questions;
    } catch (error) {
        console.error('Error fetching assessment questions:', error);
        throw new Error('Could not retrieve assessment questions. Please try again later.');
    }
}

module.exports = {
    getAllAssessmentQuestions
}