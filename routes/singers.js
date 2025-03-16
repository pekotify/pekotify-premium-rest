const express = require("express");
const router = express.Router();
const singers = require('../services/singers');
const auth = require('../services/auth');

router.get('/', async (req, res) => {
    try {
        const singerList = await singers.get();
        res.send(singerList);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;