<template>
    <div>
        <!-- 网页头部 -->
        <my-header></my-header>
        <!-- 购物车区域 -->
       <div class="shopping-width">
           <!-- 购物清单栏 -->
           <div class="shopping-form">购物清单</div>
           <!-- 购物车导航栏信息 -->
           <ul class="list-unstyled shopping-ul">
               <li><span class="radio-span mr-1" @click="all">{{select}}</span><span>全选</span></li>
               <li>商品</li>
               <li>数量</li>
               <li>单价(元)</li>
               <li>金额(元)</li>
               <li>操作</li>
           </ul>

           <!-- 商品详细信息 -->
           <div class="shopping-detalis">
               <ul class="detalis-ul list-unstyled" v-for="(p,i) in product" :key="i">
                   <li>
                       <span class="radio-span radios-span">{{select}}</span>
                   </li>
                   <li>
                       <!-- 图片区域 -->
                      <div class="img-deatalis">
                          <img :src="p.img" class="w-100"> 
                      </div>
                      <!-- 文字区域 -->
                      <div class="detalis-title">
                          <h6>{{p.title}}</h6>
                          <p>型号：{{p.size}}</p>
                           <p>颜色：{{p.color}}</p>
                          <p>规格/纯度:99.7%  起定量：215千克</p>
                          <p>配送仓储：上海沧海仓储</p>
                      </div>
                   </li>
                   <li>
                       <div class="product-jia">
                           <span @click="()=>{
                                if(p.number>1){p.number--;}
                               }">-</span>
                           <input type="text" v-model="p.number">
                           <span @click="()=>{
                               p.number++;
                           }">+</span>
                       </div>
                   </li>
                   <li>
                       <div class="product-product">
                           ￥{{p.product}}.00
                       </div>
                   </li>
                   <li>
                       <div class="product-product">
                           ￥{{p.number * p.product}}.00
                       </div>
                   </li>
                   <li>
                       <div class="product-font" @click="delect(p.pf_usershoppingid)">删除</div>
                   </li>
               </ul>
           </div>

           <!-- 删除操作 -->
           <div class="detalie-f">
               <span class="img-span-product">删除所选商品</span>
               <router-link to="/" class="router-link">继续购物</router-link>
               <div class="zongji">
                   <span>{{product.length}}</span>
                  <span> 件商品总计 （不含运费）：</span>
                   <span>￥{{content}}</span>
               </div>
               <router-link to="#" class="jisuang">去结算</router-link>
           </div>

           <!-- 绑定操作 -->
           <div class="product-jiewei">
               绑定跟单员
           </div>
       </div>
       <!-- 网页脚部 -->
        <my-footer></my-footer>
    </div>  
</template>

<style scoped>
    @import '../assets/css/shopping.css';
</style>

<script>
    export default {
        data(){
            return{
                select:"",
                product:[],
                value:0
            }
        },
        computed:{
            content(){
                this.value=0;
                for(var obj of this.product){
                    this.value+=parseInt(obj.number * obj.product);
                }
                return this.value
                
            }
        },
        methods:{
            delect(id){
               this.axios.get("/detalis/delect",{
                   params:{id:id}
               }).then(result=>{
                   this.$alert('已成功删除一个商品','删除成功',{
                        confirmButtonText: '确定',
                        callback:()=>{
                            history.go(0);
                        }
                   })
               })
            },
            all(){
                this.select!="√" ? this.select="√" : this.select=""
            }
        },
        mounted(){
            this.axios.get("users/product").then(result=>{
                this.product=result.data;
            })
        }
    }
</script>