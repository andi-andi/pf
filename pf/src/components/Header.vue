<template>
    <div>
        <div class="row header-f">
            <div class="col-md-3 col-sm-12">
                <img src="/images/log.png">
            </div>
            <div class="col-sm-12 col-md-7">
                <ul class="list-unstyled header-a m-0">
                    <li><router-link to="/">商城首页</router-link></li>
                    <li><router-link to="/shoping">商品展示</router-link></li>
                    <li><router-link to="/detalis/1">商品详情</router-link></li>
                    <li><router-link to="/indextext/1">新闻资讯</router-link></li>
                    <li><router-link to="/index1">联系我们</router-link></li>
                </ul>
            </div>
             <div class="col-md-2 m-0 col-sm-12">
                <ul class="header-login list-unstyled">
                    <li class="mr-2"><router-link to="/login">登陆</router-link></li>
                    <li class="mr-2"><router-link to="/loginzc">注册</router-link></li>
                    <li><router-link to="/shopping" target="_blank">购物车</router-link></li>
                </ul>
             </div>
        </div>
    </div>
</template>

<style scoped>
    @import '../assets/css/header.css';
</style>
