<template>
    <div class="shopping">
        <!-- 网页头部 -->
        <my-header></my-header>
        <div><img src="/images/bg-img3.jpg" class="w-100"></div>
        <div class="container mb-5 mt-5">
            <!-- 商品展示标题 -->
            <div class="text-center">
                <span class="shoping-title mb-0">商品展示</span>
                <p class="shoping-product">Products</p>
                <div>
                    <input @keyup="moniss" type="text" placeholder="请输入关键词" class="input1" v-model="value">
                    <input type="button" value="搜索" class="input2" @click="ss">
                </div>
            </div>
            <!-- ul列表 -->
            <ul class="product-ul list-unstyled">
                <li @click="quan"><a href="javsscript:;" class="active">全部</a></li>
                <li @click="body" ><a href="javsscript:;">男装</a></li>
                <li @click="girl" ><a href="javsscript:;">女装</a></li>
                <li @click="kuzi"><a href="javsscript:;">裤子</a></li>
                <li @click="qunzi"><a href="javsscript:;">裙子</a></li>
            </ul>
            <!-- 图片区域 -->
            <div class="row">
                <!-- 图片1   -->
                <div class="col-sm-12 col-md-3 product-animation mb-5" v-for="(p,i) of shopping" :key="i">
                    <div class="prodct-img">
                        <router-link to="/detalis/5" target="_blank"><div class="img-h"><img :src="p.img" alt="" class="w-100"></div></router-link>
                        <!-- 图片下面文字 -->
                        <div class="px-4 font-p">
                            <p class="font-mac mb-0 font-a">{{p.title}}</p>
                            <p class="font-size mb-0">￥{{p.titleproduct}}.00</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 网页脚部 -->
        <my-footer></my-footer>
    </div>
</template>
<style scoped>
    @import '../assets/css/shoping.css';
</style>

<script>
export default {
  data(){
      return{
          shopping:[],
          value:""
      }
  },
  methods:{
      quan(){
            this.axios.get("/detalis/shopping").then(result=>{
                this.shopping=result.data;
            })
      },
      body(){
            this.axios.get("/detalis/shoppingb").then(result=>{
                this.shopping=result.data;
            })
      },
      girl(){
            this.axios.get("/detalis/shoppingg").then(result=>{
                this.shopping=result.data;
            })
        },
      kuzi(){
          this.axios.get("/detalis/shoppingk").then(result=>{
              this.shopping=result.data;
          })
       },
      qunzi(){
          this.axios.get("/detalis/shoppingq").then(result=>{
              this.shopping=result.data;
          })
       },
       ss(){
           if(this.value!=""){
               this.axios.get("/detalis/ss",{
                   params:{val:this.value}
               }).then(result=>{
                   if(result.data.length!=0){
                       this.shopping=result.data;
                   }else{
                       this.$message("我们还没有收录此种商品，敬请期待")
                   }
               })
           }else{
               this.$message("请输入合法的关键字")
           }
       },
       moniss(e){
           if(e.keyCode==13){
               this.ss();
           }
       }
  },
  mounted(){
      this.axios.get("/detalis/shopping").then(result=>{
          this.shopping=result.data;
      })
  }
}
</script>