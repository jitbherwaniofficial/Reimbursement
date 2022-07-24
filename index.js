const express = require('express');
const app = express();
const  mysql = require('mysql');
const con = mysql.createConnection({
    host:'localhost',
    username:'root',
    password:'',
    database:"test"
});

con.connect((err)=>{
    if(err){
        console.warn("ERROR");
    }
    else{
        console.warn("CONNECTED");
    }
})

// con.query("select * from conveyance",(err,result)=>{
//     console.warn("Result",result);
// })

app.use(express.json());
app.get('/',(req,res)=>{
    con.query("select * from conveyance",(err,result)=>{
        if(err){
            res.status(400).send("ERROR")
        }else{
            res.status(200).json(result)
        }
    })
})

app.get("/:id",(req,res)=>{
    con.query("select * from conveyance WHERE id = "+req.params.id,(err,result)=>{
        if(err){
            res.status(400).send("ERROR")
        }else{
            res.status(200).json(result)
        }
    })
})

app.post("/",(req,res)=>{
    const post = req.body;
    con.query("INsert into conveyance SET ?",post,(err,result,fields)=>{
        if(err) err;
        res.send(result)
    })
        
})

app.listen(3001,console.log("Listening"))