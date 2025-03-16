const express = require("express");
const router = express.Router();
const songs = require('../services/songs');
const auth = require('../services/auth');

router.get('/:id', auth.authenticateToken, async (req, res) => {
    try {
        const id = req.params.id;
        const songList = await songs.getByUserId(id);
        res.send(songList);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});


router.post('/', auth.authenticateToken, async (req, res) => {
    try {
        const song = req.body;
        const result = await songs.create(song);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

router.post('/file', auth.authenticateToken, async (req, res) => {
    try {
        const result = await songs.addFile(req, res);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

router.put('/file/:id', auth.authenticateToken, async (req, res) => {
    try {
        const id = req.params.id;
        const result = await songs.editFile(id, req, res);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});


router.put('/:id', auth.authenticateToken, async (req, res) => {
    try {
        const song_id = req.params.id;
        const song = req.body;
        const result = await songs.update(song_id, song);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

router.delete('/:id', auth.authenticateToken, async (req, res) => {
    try {
        const song_id = req.params.id;
        const result = await songs.remove(song_id);
        res.send(result);
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;