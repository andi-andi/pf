<template>
    <div>
        <!-- 网页头部 -->
        <my-header></my-header>
        <div class="container my-5">
            <div class="row" v-html="uname.context">
                
            </div>
        </div>
        <!-- 网页尾部 -->
        <my-footer></my-footer>
    </div>
</template>

<style scoped>
    @import '../assets/css/uname.css';
</style>

<script>
export default {
    props:["uid"],
    data(){
        return{
            uname:{}
        }
    },
    mounted(){
        this.axios.get("/detalis/uname",{
            params:{uid:this.uid}
        }).then(result=>{
            this.uname=result.data;
        })
    }
}
</script>