'use strict';

// Constants
const PORT = process.env.PORT || 8088;
const express = require('express');
const app = express();

// Multiple Route Scenario
app.get('/', function (req, res) {
  res.send('Hello world!\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
