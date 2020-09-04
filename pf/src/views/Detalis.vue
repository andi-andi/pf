<template>
    <div>
    <!-- 网页头部 -->
    <my-header></my-header>
    <div><img src="/images/detalis.jpg" class="w-100"></div>
        <div class="container my-5">
            <div class="row">
                <div class=" col-md-12 col-lg-5 m-auto">
                    <div class="min">
                        <!-- 放大镜效果 -->
                        <div class="detalis-f-img">
                            <div class="div-img"><img :src="img" class="w-100"></div>
                            <!-- 放大镜区域 -->
                            <div class="img-fdj" @mouseover="seover" @mouseleave="seleave">
                                <div class="igm-fad-z"></div>
                            </div>
                            <!-- 放大镜图片 -->
                            <div class="bg-img-img"></div>
                        </div>
                        <!-- 图片列表 -->
                        <div @mouseover="seoverimg" class="px-3 pt-3 pos-div">
                            <ul  class="list-unstyled detalis-ul w-100 m-auto">
                                <li class="li-border"><img src="/images/sp5.sm.jpg" data-img="/images/sp5.jpg"></li>
                                <li><img src="/images/product_11.sm.jpg" data-img="/images/product_11.jpg"></li>
                                <li><img src="/images/product_12.sm.jpg" data-img="/images/product_12.jpg"></li>
                                <li><img src="/images/product_9.sm.jpg" data-img="/images/product_9.jpg"></li>
                                <li><img src="/images/product_10.sm.jpg" data-img="/images/product_10.jpg"></li>
                                <li><img src="/images/product_5.sm.jpg" data-img="/images/product_5.jpg"></li>
                            </ul>
                            <!-- 左右按钮 -->
                            <div class="button-div left">&lt;</div>
                            <div class="button-div right">></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-4 pt-2 text-sm-center text-lg-left">
                    <div>
                        <p class="detalis-title">{{product.title}}</p>
                        <p class="dt-p">库存：99</p>
                        <p class="dt-p">销量：120</p>
                        <p>
                            <span class="dt-p">规格：</span> <a href="javascript:;" class="img-a" style="border: 1px solid red;">默认</a>
                        </p>
                        <p @click="active1" class="color-border">
                            <span class="dt-p">尺寸：</span> <a  class="img-a img-a-border" href="javascript:;">L</a> <a  class="img-a" href="javascript:;">SM</a> <a  class="img-a" href="javascript:;">XL</a> <a class="img-a" href="javascript:;">XXL</a>
                        </p> 
                        <p @click="active2" class="color-red"> 
                            <span class="dt-p">颜色：</span> <a  class="img-a img-a-border" href="javascript:;">粉色</a> <a  class="img-a" href="javascript:;">蓝色</a>
                        </p> 
                        <p> 
                            <span class="dt-p">数量：</span><a @click="container1" class="img-a" href="javascript:;">-</a> <a  class="img-a" href="javascript:;" v-text="n"></a> <a @click="container2" class="img-a" href="javascript:;">+</a>
                        </p>
                        <p>
                            <span class="dt-p">价格:</span> <span class="detalis-product">￥{{productJg}}.00</span> <s class="ss">￥{{product.product}}.00</s>
                        </p>
                        <div><router-link class="gt-a a1" to="/shopping" target="_blank">立即购买</router-link> <a class="gt-a a2" href="javascript:;" @click="usershopping">加入购物车</a></div>
                    </div>
                </div>
                <div class="col-sm-12 col-lg-3 pt-5 text-center">
                    <div>
                        <ul class="sfq-ul list-unstyled">
                            <li>
                                <p class="m-0">免费配送和退换货 <img src="/images/jt1.png" alt=""></p>
                                <div class="tran-z mt-2">
                                    <p class="m-0 tran-p">部分城市提供当日达次日达服务</p>
                                    <p class="m-0 tran-p">Nike会员或单笔订单满399普通达免运费。</p>
                                </div>
                            </li>
                            <li>
                                <p class="m-0">评价(0) <img src="/images/jt1.png" alt=""></p>
                                <div class="tran-z mt-2">
                                    <p class="m-0 tran-p">说出你的看法。率先评论 Nike</p>
                                    <p class="m-0 tran-p">Sportswear。</p>
                                    <u class="tran-p">写评价</u>
                                </div>
                            </li>
                            <li>
                                <p class="m-0">更多信息 <img  src="/images/jt1.png" alt=""></p>
                                <div class="tran-z mt-2">
                                    <p class="m-0 tran-p">本产品不参加任何优惠活动</p>
                                    <p class="m-0 tran-p">暂无优惠信息</p>
                                    <u class="tran-p">我们会努力的</u>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    <!-- 网页脚部 -->
    <my-footer></my-footer>
    </div>
</template>
<style scoped>
    @import '../assets/css/detalis.css';
</style>

<script>
export default {
    data(){
        return{
            n:1,
            img:'/images/sp6.jpg',
            product:{title:""}
        }
    },
    methods:{
        usershopping(){
            var active=document.querySelectorAll("a.img-a-border");
            this.axios.get("/users/shopping",{
                params:{img:this.product.img,
                        title:this.product.title,
                        size:active[0].innerHTML,
                        color:active[1].innerHTML,
                        number:this.n,
                        product:this.product.product
                }
            }).then(result=>{
                this.$alert('添加购物车成功','操作成功',{
                        confirmButtonText: '确定'
                   })
            })
        },
        seoverimg(e){
            if(e.target.nodeName=="IMG"){
                var liBorder=document.querySelector(".detalis-ul>li.li-border");
                if(liBorder!=-1){
                    liBorder.className=liBorder.className.replace("li-border","");
                }
                 document.querySelector(".div-img>img").src=e.target.getAttribute("data-img");
                 document.querySelector(".bg-img-img").style.backgroundImage=`url(${e.target.getAttribute("data-img")})`;
                 e.target.parentElement.className+=" li-border";
                
            }
        },
         //数量
        container1(){
            if(this.n>1){this.n--};
        },
        container2(){
            this.n++;
        },
        active1(e){
            if(e.target.nodeName=="A"){
                var active=document.querySelector(".color-border>a.img-a-border");
                if(active!=-1){
                    active.className=active.className.replace("img-a-border","");
                };
                e.target.className+=" img-a-border";
            }
        },
        active2(e){
            if(e.target.nodeName=="A"){
                var active=document.querySelector(".color-red>a.img-a-border");
                if(active!=-1){
                    active.className=active.className.replace("img-a-border","");
                };
                e.target.className+=" img-a-border";
            }
        },
        //鼠标事件
        seover(e){
            var bgImg=document.getElementsByClassName("bg-img-img")[0];
            var imgZ=document.getElementsByClassName("igm-fad-z")[0];
            bgImg.style.display="block";
            var left=e.offsetX-75;
            var top=e.offsetY-75;
            // 判断条件
            if(left<0){left=0}else if(left>295){left=295}
            if(top<0){top=0}else if(top>250){top=250}
            imgZ.style.left=left+"px";  imgZ.style.top=top+"px";
            bgImg.style.backgroundPosition=`${-left}px ${-top}px`; 
        },
        //鼠标移出隐藏
        seleave(){
            var bgImg=document.getElementsByClassName("bg-img-img")[0];
            bgImg.style.display="none";
        }
    },
    props:["productimgul"],
    mounted(){
        //发送图片请求
        this.axios.get('/detalis',{
            params:{productimg:this.productimgul}
        }).then(result=>{
          this.img=result.data.img;
          this.product=result.data;
          document.getElementsByClassName("bg-img-img")[0].style.backgroundImage=`url(${result.data.img})`;
        })
    },
    computed:{
        productJg(){
            return parseInt( this.n * this.product.product );
        }
    }

}
</script>