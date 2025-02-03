const db = require("../db/index");

const getAllUsers = async () => {
    try {
        const users = await db.any('SELECT uuid, organization_name, contact_email FROM users');
        return users;
    } catch (error) {
        console.error('Error fetching users:', error);
        throw new Error('Could not retrieve users. Please try again later.');
    }
}

const getUserCount = async () => {
    try {
        const result = await db.one('SELECT COUNT(*) AS count FROM users');
        return result.count;
    } catch (error) {
        console.error('Error fetching user count:', error);
        throw new Error('Could not retrieve user count. Please try again later.');
    }
}

const updateUser = async (userUuid, userData) => {
    const { email, username, utility_provider, account_number } = userData;
    try {
        const updatedUser = await db.one(
            'UPDATE users SET contact_email = $1, username = $2, utility_provider = $3, account_number = $4 WHERE uuid = $5 RETURNING *',
            [email, username, utility_provider, account_number, userUuid]
        );
        return updatedUser;
    } catch (error) {
        console.error('Error updating user:', error);
        throw new Error('Could not update user. Please try again later.');
    }
}

const findUserByEmail = async (email) => {
    try {
        const user = await db.one('SELECT uuid, organization_name, contact_email FROM users WHERE contact_email = $1', [email]);
        return user;
    } catch (error) {
        console.error('Error fetching user by email:', error);
        throw new Error('Could not retrieve user by email. Please try again later.');
    }
}

const deleteUser = async (userUuid) => {
    try {
        const deletedUser = await db.result('DELETE FROM users WHERE uuid = $1', [userUuid]);
        return deletedUser.rowCount;
    } catch (error) {
        console.error('Error deleting user:', error);
        throw new Error('Could not delete user. Please try again later.');
    }
}

module.exports = {  
    getAllUsers,
    getUserCount,
    updateUser,
    findUserByEmail,
    deleteUser
}
