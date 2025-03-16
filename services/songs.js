const db = require('./db');
const config = require('../config');
const multer = require('multer');

async function getByUserId(id) {
    const rows = await db.query(
        `SELECT * FROM song WHERE penyanyi_id = ${id}`,
    );

    return rows
}

async function getMaxId() {
    const rows = await db.query(
        `SELECT MAX(song_id) FROM song`,
    );
    return rows[0]['MAX(song_id)'];
}

async function writeFile(id, date, req, res) {
    const storage = multer.diskStorage({
        destination: (req, file, cb) => {
            cb(null, 'premium-song')
        },
        filename: (req, file, cb) => {
            cb(null, id + '-' + date + '.mp3')
        }
    });
    const upload = multer({ storage: storage }).single('file');
    upload(req, res, function (err) {
        if (err instanceof multer.MulterError) {
            return res.status(500).json(err)
        } else if (err) {
            return res.status(500).json(err)
        }
    })
}

async function addFile(req, res) {
    const maxId = await getMaxId();
    const date = Date.now()
    await writeFile(maxId, date, req, res);
    return maxId + '-' + date + '.mp3';
}

async function editFile(id, req, res) {
    const date = Date.now()
    await writeFile(id, date, req, res);
    return id + '-' + date + '.mp3';
}

async function create(song) {
    console.log(song);
    const result = await db.query(
        `INSERT INTO song VALUES (0, ?, ?, ?)`,
        [song.judul, song.penyanyi_id, song.audio_path]
    );

    let message = 'Error in creating song';

    if (result.affectedRows) {
        message = 'Song created successfully';
    }

    return { message };
}

async function update(song_id, song) {
    const result = await db.query(
        `UPDATE song SET judul = ?, penyanyi_id = ?, audio_path = ? WHERE song_id = ?`,
        [song.judul, song.penyanyi_id, song.audio_path, song_id]
    );

    let message = 'Error in updating song';

    if (result.affectedRows) {
        message = 'Song updated successfully';
    }

    return { message };
}

async function remove(song_id) {
    const result = await db.query(
        `DELETE FROM song WHERE song_id = ?`,
        [song_id]
    );

    let message = 'Error in deleting song';

    if (result.affectedRows) {
        message = 'Song deleted successfully';
    }

    return { message };
}

module.exports = {
    getByUserId,
    create,
    update,
    remove,
    addFile,
    editFile
}