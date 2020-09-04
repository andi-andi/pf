<template>
    <div class="bod">
        <div class="container">
            <div class="login">
                <!-- 标题 -->
                <div class="login-f text-center">
                    <div class="login-img"><img src="/images/login-1.png" alt="" class="w-100"></div>
                    <p class="mt-2 mb-0"><span> 从 这 里 开 启 登 录 之 旅 </span></p>
                </div>
                <!-- 内容 -->
                <div class="login-nr">
                    <div class="w-100 login-nr-1">
                            <label for="">用户名或者邮箱</label>
                    </div>
                    <input @blur="none" v-model="user" @input="uname" type="text" class="user user-bottom" placeholder="请输入用户名"><br>
                    <span class="span-yz">{{spanuser}}</span>
                    <div class="w-100 login-nr-1">
                        <label for="">密码</label>
                    </div>
                    <input @blur="none1" v-model="upwd" @input="password" type="password" class="user"  placeholder="请输入密码"><br>
                    <span class="span-yz">{{upwdinner}}</span>
                    <div class="mt-3">
                        <span class="span-button" @click="span" v-text="spaninner"></span>
                        <label for="" class="lab-font">记住我（请在私人设备上使用此功能</label>
                    </div>
                    <div class="w-width"></div>
                    <!-- 内容下半部分 -->
                    <div class="w-100 next">
                        <a href="javascript:;" class="input-button button-bg1" @click="login">登陆</a>
                        <router-link to="/loginzc" class="input-button button-bg2 mt-2">注册</router-link>
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
     @import '../assets/css/login.css';
</style>

<script>
export default{
	data(){
            return{
                spaninner:"",
                spanuser:"",
                upwdinner:"",
                user:"",
                upwd:""
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
        //验证密码事件
        password(){
            var reg= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{6,16}$/;
            if(this.upwd!="" && reg.test(this.upwd)){ this.upwdinner="密码输入正确"; return true}else{this.upwdinner="密码必须包含大小写"; return false}
        },
        //失去焦点时 让span隐藏
        none (){this.spanuser=""},
        none1(){this.upwdinner=""},
        //登陆验证
        login(){
            alert("1")
        },
        login(){
            if(this.uname() && this.password() ){
                this.spanuser="";
                this.upwdinner="";
                this.axios.get("/users",{
                    params:{uname:this.user,upwd:this.upwd}
                }).then((result)=>{
                        if(result.data.length==1){
                            this.$message('登陆成功 3s后自动跳转首页');
                            setTimeout(()=>{
                                this.$router.push("/")
                            },3000)
                        }else{
                            this.$message('此账号未注册 或者输入错误');
                        }
                    })
            }else{
                this.spanuser="";
                this.upwdinner="";
                this.$message('账号或者密码格式不正确');
            }
        }
    }

}
</script>


