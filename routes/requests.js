const express = require("express");
const router = express.Router();
const requests = require('../services/requests');

router.get('/', async (req, res) => {
    try {
        const result = await requests.get();
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;