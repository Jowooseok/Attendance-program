const express = require('express'); //서버를 구성해주는 프레임 워크

const app = express();

app.get('/', (req, res)=>{
    res.send('Hellos, server');
})

app.get('/about', (req, res)=>{
    res.send('Hello, about')
})

app.listen(1715, ()=>{
    console.log(`server is running on http//localhost:1715`);
});
