<template>
    <div>
        <!-- 网页脚部 -->
        <my-header></my-header>
        <div>
        <img src="/images/xinwen.jpg" alt="" class="w-100">
        </div>
        <!-- 页面主体 -->
        <div class="container mt-5 mb-5">
        <!-- 页面内容 -->
            <div class="row">
                <div class="col-12">
                <!-- 内容区域 -->
                    <div v-html="xinwen[0].titleContext">

                    </div>
                </div>
            </div>
        </div>
        <!-- 网页脚部 -->
        <my-footer></my-footer>
    </div>
</template>
<style scoped>
    @import '../assets/css/index-text.css';
</style>
<script>
    export default {
        props:["xinwenid"],
        data(){
            return{
                xinwen:[{titleContext:''}]
            }
        },
        mounted(){
            this.axios.get('/detalis/xinwen',{
                params:{xinwenid:this.xinwenid}
            }).then(result=>{
                this.xinwen=result.data;
            })
        }
    }
    

</script>

