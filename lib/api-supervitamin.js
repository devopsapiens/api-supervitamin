"use strict";
//FIX; SET ENV APP_PORT

var express = require("express");
var app = express();

app.get("/", (req, res) => {
    res.send("Hello World!");
});

// use port 3000 unless there exists a preconfigured port
var port = process.env.APP_PORT || 3000;

app.listen(port);