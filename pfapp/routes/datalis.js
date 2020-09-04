var express = require('express');
var router = express.Router();
var pool=require('../pool.js')

//响应详情页图片
router.get('/',(req,res)=>{
    var sql='select * from pf_productimgul where productimgul_id=?';
    pool.query(sql,[req.query.productimg],(err,result)=>{
        if(err) throw err;
        res.send(result[0]);
    })
})

/*响应商品展示全部列表*/
router.get('/shopping',(req,res)=>{
    var sql='select * from pf_shopping';
    pool.query(sql,[req.query.productimg],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*响应商品展示男装全部列表*/
router.get('/shoppingb',(req,res)=>{
    var sql='select * from pf_shoppingb';
    pool.query(sql,[req.query.productimg],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*响应商品展示女装全部列表*/
router.get('/shoppingg',(req,res)=>{
    var sql='select * from pf_shoppingg';
    pool.query(sql,[req.query.productimg],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*响应商品展示长裤全部列表*/
router.get('/shoppingk',(req,res)=>{
    var sql='select * from pf_shoppingk';
    pool.query(sql,[req.query.productimg],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*响应商品展示裙子全部列表*/
router.get('/shoppingq',(req,res)=>{
    var sql='select * from pf_shoppingq';
    pool.query(sql,[req.query.productimg],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
}) 

/*响应商品展示搜索全部列表*/
router.get('/ss',(req,res)=>{
    var val=req.query.val;
    var sql=`SELECT * FROM pf_shopping WHERE title LIKE '%${val}%'`;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
}) 
// SELECT * FROM pf_shopping WHERE title LIKE '%连衣裙%';
/*响应新闻资讯详情页*/
router.get('/xinwen',(req,res)=>{
    var sql='select * from pf_xinwen where xinwen_id=?';
    pool.query(sql,[req.query.xinwenid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/* 响应设计师简介*/
router.get('/uname', function(req, res) {
    var sql='select * from pf_uname where pf_unameid=?';
    pool.query(sql,[req.query.uid],(err,result)=>{
      if(err) throw err;
      res.send(result[0]);
    })
  });
  
/* 响应视频页面*/
router.get('/video', function(req, res) {
    var sql='select * from pf_video where pf_videoid=?';
    pool.query(sql,[req.query.videoid],(err,result)=>{
      if(err) throw err;
      res.send(result[0]);
    })
  });

/* 删除购物车数据*/
router.get('/delect', function(req, res) {
    var sql='DELETE FROM pf_usershopping WHERE pf_usershoppingid=?';
    pool.query(sql,[req.query.id],(err,result)=>{
      if(err) throw err;
      res.send(result);
    })
  });
module.exports = router;
