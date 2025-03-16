const express = require("express");
const router = express.Router();

router.get('/:file', async (req, res) => {
    try {
        const filePath = '/usr/src/app/premium-song/' + req.params.file;
        console.log(filePath)
        console.log({ root: __dirname })
        res.type('audio/mpeg');
        try {
            console.log('send fileeeee')
            res.sendFile(filePath);
        } catch (err) {
            // log the error message and file path
            if (err instanceof ForbiddenError) {
                console.log("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
                console.error(err.message, filePath);
            }
        }
    } catch (err) {
        console.log(err);
        res.status(500).send({ message: err.message });
    }
});

module.exports = router;