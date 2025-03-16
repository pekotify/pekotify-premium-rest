const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

function generateAccessToken(username) {
    dotenv.config()
    return jwt.sign({ id: username }, process.env.TOKEN_SECRET, { expiresIn: '1d' });
}

function authenticateToken(req, res, next) {
    dotenv.config()
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];

    if (token == null) return res.sendStatus(401);

    jwt.verify(token, process.env.TOKEN_SECRET, (err, user) => {
        if (err) return res.sendStatus(403);
        req.user = user;
        next();
    })
}

module.exports = {
    generateAccessToken,
    authenticateToken
}