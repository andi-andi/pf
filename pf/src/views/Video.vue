<template>
  <div>
    <!-- 网页头部 -->
    <my-header></my-header>
        <!-- 文章标题 -->
        <div class="video-title">
            <p>Simple×工作室</p>
            <p>2018上海新春 </p>
            <p>我们与猪工作室合作制作的互动装置《新春》目前首次登陆中国。</p>
            <p>这件作品最初在米兰2017年的Sa­lone del Mo­bile上展出，随后在迈阿密设计展上展出，使上海成为全球第三个迎接新春的城市。</p>
        </div>
        <!-- 视频 -->
        <div class="video-rel">
            <video id="video" loop="true" :src="video.src" width="100%" :poster="video.img"></video>
            <div class="video-abs">
                <img :src="img" @click="videobf">
            </div>
        </div>
        <!-- 内容区域 -->
        <div class="video-title">
            这部作品以中国夜间水上花园为灵感，在一个新的环境中探索短暂的素材。充满薄雾的“花朵”与皮肤接触后消失，只有戴着特殊手套的游客才能手持。制作这些花朵是该装置大胆的中心：在莱佛士市长宁钟楼周围放置一个树状雕塑。 
        </div>
        <!-- 图片区域 -->
        <div class="py-5">
            <div class="text-center">
                <img src="/video/video1.png" class="mr-5 mb-5 w-100 img-max1">
                <img src="/video/video2.png" style="vertical-align: top;" class="w-100 img-max2">
            </div>
        </div>
        <!-- 边框 -->
        <div class="img-border"></div>
        <!-- 文本区域 -->
        <div class="video-title-text">
            <p><strong>与工作室的对话</strong></p>
            <p><strong>新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样？你知道吗？</strong></p>
            <p style="font-size: 14px;">我们在上海住了六个月，以创建我们的头发高速公路项目。这是一个我们热爱的城市，它的花园和历史魅力的感觉。我们特别喜欢的是传统的水上花园豫园和苏州附近的其他河镇。这是我们想从作品中画出来的东西，夜晚水上花园的倒影世界。我们喜欢在夜晚散步，当城市的喧嚣已经过去，环境呈现出一种更加感官的体验，在这里你可以欣赏到城市的环境，河面上的灯光，微风的感觉，这是我们想用新春创造的空间类型。</p>
            <p style="font-size: 14px;">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>
            <p><strong>这一次，这部拍摄新春的电影以水池为特色。你能告诉我们这背后的灵感吗？与其他元素相比，气泡对水的反应有何不同？为什么？</strong></p>
            <p style="font-size: 14px;">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>
        </div>
        <!-- 图片区域 -->
        <div class="text-center">
            <img src="/video/video3.png" class="w-100 img-max">
        </div>
        <!-- 文本区域 -->
        <div class="video-title-text">
            <p><strong>莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？</strong></p>
            <p style="font-size: 14px;">我们想创造一个更黑暗的空间，这是相当平静的感觉和花园在夜间的城市。我们选择了深绿色作为空间，这是我们在新春第一次使用颜色。我们喜欢深糯绿色的叶子，想把白色的树放在那种环境中。</p>
            <p><strong>新春的第一个装置是在考虑到自然和季节变化的情况下，围绕着一个开花的雕塑创作的。你认为在秋天展出会改变装置的感觉吗？</strong></p>
            <p style="font-size: 14px;">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。</p>
            <p><strong>你希望参观者从装置中拿走什么？</strong></p>
            <p style="font-size: 14px;">我们希望人们以一种非常纯粹的感官体验的方式参与这项工作，这种感觉既现代又永恒，是一种超乎想象的感觉。</p>
        </div>
        <!-- 边框 -->
        <div class="img-border mb-5"></div>
        <!-- 页面尾部 -->
        <ul class="list-unstyled ul-display w-75 m-auto text-center">
            <li>
                <div>
                    <div><img src="/video/videoicon1.png"></div>
                    <p class="mb-1 title">配送快捷</p>
                    <p class="m-0 title-a">Fast dis­tri­b­u­tion</p>
                </div>
            </li>
            <li>
                <div>
                    <div><img src="/video/videoicon2.png"></div>
                    <p class="mb-1 title">全球配送</p>
                    <p class="m-0 title-a">Global Dis­tri­b­u­tion</p>
                </div>
            </li>
            <li>
                <div>
                    <div><img src="/video/videoicon3.png"></div>
                    <p class="mb-1 title">客服服务</p>
                    <p class="m-0 title-a">Cus­tomer ser­vice</p>
                </div>
            </li>
            <li class="mb-5">
                <div>
                    <div><img src="/video/videoicon4.png"></div>
                    <p class="mb-1 title">优惠活动</p>
                    <p class="m-0 title-a">Pref­er­en­tial ac­tiv­i­ties</p>
                </div>
            </li>
        </ul>
    <!-- 网页脚部 -->
    <my-footer></my-footer>
  </div>
</template>

<style scoped>
@import '../assets/css/video.css';
</style>

<script>
    export default {
        props:["id"],
        data(){
            return{
                img:'/video/zt.png',
                video:{}
            }
        },
        methods:{
            videobf(){
                var video=document.getElementById("video");
                if(video.paused){
                   video.play();
                   this.img='/video/bf.png'; 
                }else{
                    video.pause();
                    this.img='/video/zt.png'; 
                }

            }
        },
        mounted(){
            this.axios.get("/detalis/video",{
                params:{videoid:this.id}
            }).then(result=>{
                this.video=result.data;
            })
        }
    }
</script>