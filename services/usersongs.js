const { subscribe } = require('../routes/register');
const db = require('./db');
const soap = require('./soap');
const jsdom = require('jsdom');

async function getUserSongs(userId, singerId) {
    // soap request and unpack xml here

    const response = await soap.soapUserSongs(userId, singerId)

    console.log(response)
    var parseString = require('xml2js').parseString;
    var xml = response
    var res
    await parseString(xml, function (err, result) {
        console.log(err)
        console.log(result)
        let envelope = result['S:Envelope']
        let body = envelope['S:Body'][0]
        let response = body['ns2:getStatusResponse'][0]
        let ret = response['return'][0]

        res = ret
    });
    console.log(res)

    if (res === "ACCEPTED") {
        console.log('SEARCHINGGGGGGGGGGGGGGGG')
        const rows = await db.query(
            `SELECT * FROM song WHERE penyanyi_id = ${singerId}`,
        );
        return rows
    } else {
        return []
    }
}

async function getAllUserSongs(userId) {
    const rows = await db.query(
        `SELECT user_id, name FROM user`,
    );

    var songs = []
    console.log(rows)

    for (let i = 0; i < rows.length; i++) {
        const artistId = rows[i].user_id;
        const artistName = rows[i].name;
        console.log(userId, artistId)
        artistSongs = await getUserSongs(userId, artistId)
        artistSongs.map(song => (song.artistName = artistName))
        songs = songs.concat(artistSongs);
    }

    return songs
}

module.exports = {
    getUserSongs,
    getAllUserSongs
}