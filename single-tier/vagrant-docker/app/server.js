'use strict';

// Constants
const express = require('express');
const PORT = process.env.PORT || 8089;
const app = express();

// Multiple Route Scenario
app.get('/', function (req, res) {
  res.send('Hello world!\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
