const express = require("express");
const router = express.Router();
const login = require('../services/login');
const auth = require('../services/auth');

router.post('/', async (req, res) => {
    try {
        const user = req.body;
        const result = await login.login(user);
        if (result.message === 'Login successful') {
            const token = auth.generateAccessToken(user.username);
            res.send({ message: result.message, accessToken: token, user: result.user });
        } else {
            res.send(result);
        }
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;