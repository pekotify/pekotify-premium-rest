const db = require('./db');
const config = require('../config');
const bcrypt = require('bcrypt');

async function register(user) {
    const hash = await bcrypt.hash(user.password, 10);
    const result = await db.query(
        `INSERT INTO user VALUES (0, ?, ?, ?, ?, 0)`,
        [user.email, hash, user.username, user.name]
    );

    let message = 'Error in creating user';

    if (result.affectedRows) {
        message = 'User created successfully';
    }

    return { message };
}

async function checkUsername(username) {
    const rows = await db.query(
        `SELECT * FROM user WHERE username = ?`,
        [username]
    );

    return rows.length == 0;
}

async function checkEmail(email) {
    const rows = await db.query(
        `SELECT * FROM user WHERE email = ?`,
        [email]
    );

    return rows.length == 0;
}

module.exports = {
    register,
    checkUsername,
    checkEmail
}