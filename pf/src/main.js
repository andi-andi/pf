import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Header from './components/Header'  //引入全局头部组件
import Footer from './components/Footer'  //引入全局脚部文件
import ElementUI from 'element-ui';       //引入elementui
import 'element-ui/lib/theme-chalk/index.css'; //引入elementui样式

Vue.use(ElementUI);   //将element挂载到Vue
axios.defaults.baseURL="http://127.0.0.1:5050";   //配置axios基础路径
Vue.prototype.axios=axios;                        //将axios添加到Vue原型对象中 
Vue.component("my-header", Header);
Vue.component("my-footer", Footer);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
