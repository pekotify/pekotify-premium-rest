const express = require("express");
const router = express.Router();
const approve = require('../services/approve');


router.get('/:confirm/:artistId/:userId', async (req, res) => {
    try {
        const userId = req.params.userId
        const artistId = req.params.artistId
        const status = req.params.confirm
        const result = await approve.approval(artistId, userId, status);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;