const db = require('./db');
const config = require('../config');

async function get() {
    const rows = await db.query(
        `SELECT * FROM user WHERE isAdmin = 0`,
    );

    return rows
}

module.exports = {
    get
}