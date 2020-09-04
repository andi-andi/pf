//取消预加载 实现懒加载效果
module.exports={
    chainWebpack:config=>{
          config.plugins.delete("prefetch") //取消预加载
    }
}