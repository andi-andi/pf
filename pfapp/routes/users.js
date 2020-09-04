var express = require('express');
var router = express.Router();
var pool=require('../pool.js')


/*验证用户登录*/
router.get("/",function(req,res){
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    var sql='select uname,upwd from pf_user where uname=? and upwd=?';
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*验证用户注册*/
router.post("/post",function(req,res){
    var obj=req.body;
    var sql='INSERT INTO pf_user SET ?';
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows!=0){
            res.send(result);
        }
    })
})

/*添加用户购物车数据*/
router.get("/shopping",function(req,res){
    var obj=req.query;
    var sql='INSERT INTO pf_usershopping SET ?';
    pool.query(sql,[obj],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows!=0){
            res.send(result);
        }
    })
})

/*使用用户购物车数据*/
router.get("/product",function(req,res){
    var sql='select * from pf_usershopping';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports = router;
