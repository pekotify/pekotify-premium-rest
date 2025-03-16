const db = require('./db');
const config = require('../config');
const bcrypt = require('bcrypt');

async function login(user) {
    const rows = await db.query(
        `SELECT * FROM user WHERE username = ?`,
        [user.username]
    );

    let message = 'Error in login';

    if (rows.length) {
        const result = await bcrypt.compare(user.password, rows[0].password);
        if (result) {
            message = 'Login successful';
        } else {
            message = 'Wrong password';
        }
    } else {
        message = 'User not found';
    }

    const retuser = Object.assign({}, rows[0]);
    ["password"].forEach(key => delete retuser[key]);

    return { message: message, user: retuser };
}

module.exports = { login }