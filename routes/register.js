const express = require("express");
const router = express.Router();
const register = require('../services/register');
const auth = require('../services/auth');

router.post('/', async (req, res) => {
    try {
        const user = req.body;
        await register.register(user);
        token = auth.generateAccessToken(user.username);
        user.isAdmin = 0;
        res.send({ message: "Register successful", accessToken: token, user: user });
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

router.get('/check-username', async (req, res) => {
    try {
        const username = req.query.username;
        const result = await register.checkUsername(username);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
})

router.get('/check-email', async (req, res) => {
    try {
        const email = req.query.email;
        const result = await register.checkEmail(email);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
})

module.exports = router;