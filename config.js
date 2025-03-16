const config = {
    db: {
        /* don't expose password or any sensitive info, done only for demo */
        host: "host.docker.internal",
        user: "root",
        port: 3307,

        // Docker configuration
        host: "host.docker.internal",
        user: "root",
        port: 3307,
        password: "",
        database: "pekotify_rest",
    },
};
module.exports = config;