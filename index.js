const express = require("express");
const app = express();
const port = 3005;
const songsRouter = require('./routes/songs');
const singersRouter = require('./routes/singers');
const registerRouter = require('./routes/register');
const loginRouter = require('./routes/login');
const userSongRouter = require('./routes/usersongs');
const requestsRouter = require('./routes/requests');
const approveRouter = require('./routes/approve');
const audioRouter = require('./routes/audio');
const cors = require('cors');
const bodyParser = require('body-parser');

app.use(cors());
app.use(bodyParser.json({ limit: '20mb' }));
app.use(bodyParser.urlencoded({ limit: '20mb', extended: true }));

app.use(express.json());
app.use(
    express.urlencoded({
        extended: true,
    })
);

app.get("/", (req, res) => {
    res.send({ message: "what the heeelllll" });
});

app.use("/songs", songsRouter);
app.use("/singers", singersRouter);
app.use("/register", registerRouter);
app.use("/login", loginRouter);
app.use("/user-songs", userSongRouter);
app.use("/requests", requestsRouter);
app.use("/approve", approveRouter);
app.use("/premium-songs", audioRouter);

app.use((err, req, res, next) => {
    const statusCode = err.statusCode || 500;
    console.error(err.message, err.stack);
    res.status(statusCode).json({ message: err.message });
    return;
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});

