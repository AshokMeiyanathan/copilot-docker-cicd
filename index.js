//simple app which listens port 3000
//and responds with "Hello World!" to any requests
const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(3000, () => {
    console.log('Example app listening on port 3000!');
}

