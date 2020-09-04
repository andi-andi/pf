<template>
    <main>
        <!-- 网页头部 -->
        <my-header></my-header>
        <!-- 轮播图 -->
        <div style="margin-top:5px;">
            <el-carousel height="560px" trigger="click">
                <el-carousel-item>
                    <img src="/images/32.png">
                </el-carousel-item>
                <el-carousel-item>
                    <img src="/images/33.png">
                </el-carousel-item>
                <el-carousel-item>
                    <img src="/images/34.png">
                </el-carousel-item>
                <el-carousel-item>
                    <img src="/images/32.png">
                </el-carousel-item>
            </el-carousel>
        </div>
        <!-- 轮播图结束区域 -->

        <div class="container">
            <!-- 促销价格区域 -->
            <div class="cx">
                <!-- 文字区域 -->
                <div class="cx-title mb-5">
                    <p class="m-0">只有最好</p>
                    <p class="m-0">促销价格</p>
                </div>
                <!-- 图片区域 -->
                <div class="row">
                    <div class="col-sm-12 col-md-4 mb-5" v-for="(p,i) of categors" :key="i">
                        <div class="index-relate">
                            <div><img :src="p.productimg" class="w-100"></div>
                            <div class="detalis-index">
                                <p class="m-0">{{p.title}}</p>
                                <p class="m-0">{{p.titlefont}}</p>
                            </div>
                            <div class="goshopping-a"><router-link  target="_blank" :to="`/detalis/${p.productimg_id}`">{{p.textt}}</router-link></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 促销价格结束区域 -->

            <!-- 新款区域 -->
            <div>
                <!-- 文字区域 -->
                <div class="wy-index">
                   <p>五月新款</p>
                   <span>New Cloth</span>
                </div>
                <!-- 图片区域 -->
                <div class="row">
                    <div class="col-sm-12 col-md-4 mt-5" v-for="(p,i) of productimgul" :key="i">
                        <div class="index-relate-img">
                            <div><img :src="p.img" class="w-100"></div>
                            <div class="preserve">
                                <div class="text-none">
                                    <p class="m-0">{{p.nameul}}</p>
                                    <p class="m-0">{{p.product}} RMB</p>
                                    <p class="m-0">由美利奴羊毛混纺面料制成，并糅合少许羊绒打造出细腻的针织质感。宽松版型，搭配罗纹半高领及宽松短袖，两侧设有便于活动的开衩。</p>
                                    <router-link  target="_blank" :to="`/detalis/${p.productimgul_id}`" class="button-detalis">查看详情</router-link>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <!-- 新款结束区域 -->

            <!-- 分割线 -->
            <div class="margin-fg my-5 pt-5"></div>
            <!-- 分割线结束 -->

            <div class="lbt-div mb-5">
                <ul class="list-unstyled">
                    <li><img src="/images/gallery_1.jpg"></li>
                    <li><img src="/images/gallery_2.jpg"></li>
                    <li><img src="/images/gallery_3.jpg"></li>
                    <li><img src="/images/gallery_4.jpg"></li>
                    <li><img src="/images/gallery_5.jpg"></li>
                    <li><img src="/images/gallery_6.jpg"></li>
                    <li><img src="/images/gallery_2.jpg"></li>
                    <li><img src="/images/gallery_3.jpg"></li>
                    <li><img src="/images/gallery_4.jpg"></li>
                    <li><img src="/images/gallery_5.jpg"></li>
                    <li><img src="/images/gallery_6.jpg"></li>
                </ul>
            </div>

             <!-- 新闻资讯 -->
             <div>
                 <!-- 新闻标题 -->
                 <div class="xinwen-titlefont"><strong>新闻资讯</strong></div>
                 <!-- 内容区域 -->
                 <div class="row mt-5">
                     <div class="col-sm-12 col-md-4 mb-4" v-for="(p,i) of text" :key="i">
                         <div class="xiwen-f">
                             <div><img :src="p.img" class="w-100"></div>
                             <div>
                                 <p class=" mt-2 xiwne-index">{{p.title}}</p>
                                 <p class="xinwen-textcont">{{p.text}}</p>
                             </div>
                             <router-link  target="_blank" :to="`/indextext/${p.pf_xinwentitleid}`" class="button-lianjie">查看详情</router-link>
                         </div>
                     </div>
                 </div>
             </div>
             <!-- 新闻资讯结束 -->

            <!-- 品牌动态 -->
             <div>
                 <!-- 文字区域 -->
                 <div class="pinpai">
                     <p class="m-0"><strong>品牌动态</strong></p>
                     <!-- 内容区域 -->
                    <div class="row mt-5">
                        <div class="col-sm-12 col-md-4 mb-4" v-for="(p,i) of band" :key="i">
                            <div class="xiwen-f">
                                <div><img :src="p.img" class="w-100"></div>
                                <div>
                                    <p class=" mt-2 xiwne-index">{{p.title}}</p>
                                    <p class="xinwen-textcont">{{p.text}}</p>
                                </div>
                                <router-link target="_blank" :to="`/video/${p.pf_bandid}`" class="button-lianjie">查看详情</router-link>
                            </div>
                        </div>
                    </div>
                 </div>
             </div>
            <!-- 品牌动态结束 -->

            <!-- 设计师简介 -->
             <div class="row mt-5">
                 <div class="col-sm-12 col-md-6 mb-5">
                     <div class="uname-position">
                         <div><img src="/images/untitled.png" class="w-100"></div>
                         <div class="uanme-abaole">
                             <p class="m-0">前沿设计师麦尔</p>
                              <p class="m-0">Frontier Designer Mayer</p>
                         </div>
                         <router-link to="/uname/1"></router-link>
                     </div>
                 </div>
                 <div class="col-sm-12 col-md-6 mb-5">
                     <div class="uname-position">
                         <div><img src="/images/untitle.png" class="w-100"></div>
                         <div class="uanme-abaole">
                             <p class="m-0">设计鬼才郑永康</p>
                              <p class="m-0">Zheng Yongkang, a devil of design</p>
                         </div>
                         <router-link to="/uname/2"></router-link>
                     </div>
                 </div>
             </div>
             <!-- 设计师简介结束 -->
             
             <!-- 照片墙开始 -->
             <div class="img-relate">
                <div><router-link to="/video/1"><img src="/images/img1.png" class="w-100"></router-link></div>
                <div><router-link to="/video/2"><img src="/images/img2.png" class="w-100"></router-link></div>
                <div><router-link to="/video/3"><img src="/images/img3.png" class="w-100"></router-link></div>
                <div><router-link to="/video/1"><img src="/images/img4.png" class="w-100"></router-link></div>
                <div><router-link to="/video/2"><img src="/images/img5.png" class="w-100"></router-link></div>
                <div><router-link to="/video/3"><img src="/images/img6.png" class="w-100"></router-link></div>
                <div><router-link to="/video/3"><img src="/images/img7.png" class="w-100"></router-link></div>
             </div>
             <!-- 照片墙结束 -->

             <!-- 联系我们 -->
             <div class="row text-center">
                 <div class="col-sm-12 col-md-4 mb-5" v-for="(p,i) of lianxi" :key="i">
                     <div>
                         <p class="band-title">{{p.title}}</p>
                         <p class="lianxi-wb">
                             <img src="/images/dh1.png"> <span >电话：{{p.phone}}</span>
                         </p>
                         <p class="lianxi-wb">
                             <img src="/images/dh2.png"> <span >{{p.email}}</span>
                         </p>
                         <p class="lianxi-wb">
                             <img src="/images/dz.png"> <span >{{p.dizi}}</span>
                         </p>
                     </div>
                 </div>
             </div>
        </div>
        <!-- 网页尾部 -->
        <my-footer></my-footer>
    </main>

</template>

<style scoped>
    @import '../assets/css/css.css';
</style>

<script>
    export default {
        data(){
            return{
                categors:[],
                productimgul:[],
                text:[],
                band:[],
                lianxi:[]
            }
        },
        methods:{

        },
        mounted(){
            this.axios.get('/').then(result=>{
                this.categors=result.data;
            });
            this.axios.get('/productimgul').then(result=>{
                this.productimgul=result.data;
            });
            this.axios.get('/text').then(result=>{
                this.text=result.data;
            });
            this.axios.get('/band').then(result=>{
                this.band=result.data;
            });
            this.axios.get('/lianxi').then(result=>{
                this.lianxi=result.data;
            })
        },
    }
</script>