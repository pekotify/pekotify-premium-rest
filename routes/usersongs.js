const express = require("express");
const router = express.Router();
const userSongs = require('../services/usersongs');

router.get('/:userId/:singerId', async (req, res) => {
    try {
        const userId = req.params.userId;
        const singerId = req.params.singerId;
        const songList = await userSongs.getUserSongs(userId, singerId);
        res.send(songList);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

router.get('/:userId', async (req, res) => {
    try {
        const userId = req.params.userId;
        const songList = await userSongs.getAllUserSongs(userId);
        res.send(songList);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;