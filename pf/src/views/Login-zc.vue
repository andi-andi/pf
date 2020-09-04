<template>
    <div class="bod">
        <div class="container">
            <div class="login">
                <!-- 标题 -->
                <div class="login-f text-center">
                    <div class="login-img"><img src="/images/login-1.png" alt="" class="w-100"></div>
                    <p class="mt-2 mb-0"><span> 从 这 里 开 启 注 册 之 旅 </span></p>
                </div>
                <!-- 内容 -->
                <div class="login-nr">
                    <div class="w-100 login-nr-1"><label for="">用户名 &nbsp; *</label></div>
                    <input @blur="none" v-model="user" @input="uname" type="text" class="user user-bottom" placeholder="请输入用户名"><br>
                    <span class="span-yz">{{spanuser}}</span>

                    <div class="w-100 login-nr-1">
                        <label for="">电子邮箱 &nbsp; *</label>
                    </div>
                    <input @blur="none2" @input="email" v-model="emval" type="email" class="user mb-2"  placeholder="请输入邮箱"><br>
                    <span class="span-yz">{{emails}}</span>

                    <div class="w-100 login-nr-1">
                        <label for="">密码 &nbsp; *</label>
                    </div>
                    <input @blur="none1" v-model="upwd" @input="password" type="password" class="user mb-3"  placeholder="请输入密码"><br>
                    <span class="span-yz">{{upwdinner}}</span>

                    <div class="w-100 login-nr-1"><label for="">确认密码 &nbsp; *</label></div>
                    <input @blur="none0" @input="upwdqr" v-model="upwdu" type="password" class="user"  placeholder="请确认密码"><br>
                    <span class="span-yz">{{upwduw}}</span>
                    
                    <div class="mt-3">
                        <span class="span-button" @click="span">{{spaninner}}</span>
                        <label for="" class="lab-font">我已经阅读并同意服务条款以及法律声明</label>
                    </div>
                    <div class="w-width"></div>
                    <!-- 内容下半部分 -->
                    <div class="w-100 next">
                        <router-link to="/login" class="input-button button-bg1">登陆</router-link>
                        <a href="javascript:;" class="input-button button-bg2 mt-2" @click="postuser">注册</a>
                        <div class="marign mb-2">
                            <span class="next-span">其他账号登录：</span>
                            <a target="_blank" href="https://im.qq.com/"><img src="/images/icon14.png" title="QQ"></a>
                            <a target="_blank" href="https://weixin.qq.com/"><img src="/images/icon15.png" title="微信"></a>
                            <a target="_blank" href="http://www.google.cn/"><img src="/images/icon1.1.png" title="谷歌"></a>
                        </div>
                        <a href="#" class="next-a">忘记密码？点击这里找回</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
    @import '../assets/css/loginzc.css';
</style>
<script>
    export default {
        data(){
            return{
                user:"",
                upwd:"",
                emval:"",
                upwdu:"",
                spaninner:"",
                emails:"",
                spanuser:"",
                upwdinner:"",
                upwduw:""
            }
        },
        methods:{
            //打钩事件
            span(){
                this.spaninner=="" ? this.spaninner="√" : this.spaninner=""; 
            },
            //验证用户名事件
            uname(){
                 var reg = /^[a-zA-Z]\w{4,15}$/;
                  if(this.user!="" && reg.test(this.user)){ this.spanuser="用户名输入正确"; return true }else{ this.spanuser="用户名输入不正确"; return false}
            },
            //验证电子邮箱
            email(){
                var reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
                if(this.emval!="" && reg.test(this.emval)){this.emails="邮箱输入正确"; return true}else{this.emails="邮箱格式错误"; return false}
            },
            //验证密码事件
            password(){
                var reg= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{6,16}$/;
                if(this.upwd!="" && reg.test(this.upwd)){ this.upwdinner="密码输入正确"; return true}else{this.upwdinner="密码必须包含大小写"; return false}
            },
            //确认密码
           upwdqr(){
               if(this.upwdu!==this.upwd){this.upwduw="密码错误"; return false}else{this.upwduw="密码输入正确"; return true}
           },
           //失去焦点时 让span隐藏
                       //失去焦点时 让span隐藏
            none(){this.spanuser=""},
            none1(){this.upwdinner=""},
            none2(){this.emails=""},
            none0(){this.upwduw=""},
            postuser(){
                if(this.uname() && this.email() && this.password() && this.upwdqr() ){
                    this.spanuser="";this.upwdinner="";this.emails="";this.upwduw="";
                    this.axios.post("users/post",`uname=${this.user}&email=${this.emval}&upwd=${this.upwd}`).then(result=>{
                        if(result.data.affectedRows==1){
                            this.$message('注册成功 3s后自动跳转首页');
                            setTimeout(()=>{
                                this.$router.push("/")
                            },3000)
                        }
                    })
                }else{
                   this.$message('格式出现错误');
                }
            }
        }
    }
</script>

