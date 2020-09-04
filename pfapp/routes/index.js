var express = require('express');
var router = express.Router();
var pool=require('../pool.js')
/* 响应用户促销价格图片*/
router.get('/', function(req, res) {
  var sql='select * from pf_productimg';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});

/* 响应首页商品展示图片*/
router.get('/productimgul', function(req, res) {
  var sql='select * from pf_productimgul';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});

/* 响应首页新闻区域*/
router.get('/text', function(req, res) {
  var sql='select * from pf_xinwentitle';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});

/* 响应首页动态区域*/
router.get('/band', function(req, res) {
  var sql='select * from pf_band';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});

/* 响应首页联系区域*/
router.get('/lianxi', function(req, res) {
  var sql='select * from pf_lianxi';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
});
module.exports = router;
