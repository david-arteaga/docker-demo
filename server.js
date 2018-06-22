const express = require('express');
const os = require('os');

const app = express();

app.get('/', (req, res) => res.end(os.hostname()));

app.listen(3000, () => console.log('server listening on port 3000'));
