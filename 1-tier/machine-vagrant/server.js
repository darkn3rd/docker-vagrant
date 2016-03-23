'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// Application
const app = express();

var ip = 0

// Multiple Route Scenario
app.get('/', function (req, res) {
  res.send('Hello world!\n');
});

app.listen(PORT);

var ip = require("ip");
console.log('Running on http://' + ip.address() + ':' + PORT);
