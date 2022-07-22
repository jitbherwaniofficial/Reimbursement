const { response } = require('express');
const express = require('express');
const app = express();
const  mysql = require('mysql');

const con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database: 'reimbursement'
})

con.connect((err)=>{
    if(err){
        console.log("Error in Connection");
    }
})

app.get('/',(req,res)=>{
    res.send("select * from conveyance",(err,result)=>{
        if(err){
            res.send("Error");
        }else{
            res.send(result)
        }
    })
})

app.post('/',(req,res)=>{
    const data = {
        from:"september",
        to:"october",
        purpose:"Market Visit",
        mode:"Bike",
        km:80,
        InvNo:9,
        Amt:8000
    }
    console.log(req.body)
    con.query("Insert into conveyance SET ? ",data,(err,result,fields)=>{
        if(err){
            response.send("Error");
        }
        res.send(result)
    })
})

app.listen(3000,console.log("Listening"))