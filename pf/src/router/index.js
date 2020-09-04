import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index'   //引入首页组件
Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Index',
    component: Index,
    meta:{
      keepAlive:true
    }
  },
  {
    path: '/detalis/:productimgul',
    component: () => import(/* webpackChunkName: "detalis" */ '../views/Detalis.vue'),
    props:true
  },
  {
    path: '/shopping',
    component: () => import(/* webpackChunkName: "shoping" */ '../views/Shopping.vue')
  },
  {
    path: '/shoping',
    component: () => import(/* webpackChunkName: "shopping" */ '../views/Shoping.vue')
  },
  {
    path: '/indextext/:xinwenid',
    component: () => import(/* webpackChunkName: "indextext" */ '../views/Index-text.vue'),
    props:true
  },
  {
    path: '/index1',
    component: () => import(/* webpackChunkName: "index1" */ '../views/Index1.vue')
  },
  {
    path: '/login',
    component: () => import(/* webpackChunkName: "login" */ '../views/Login.vue')
  },
  {
    path: '/loginzc',
    component: () => import(/* webpackChunkName: "loginzc" */ '../views/Login-zc.vue')
  },
  {
    path: '/uname/:uid',
    component: () => import(/* webpackChunkName: "uname" */ '../views/Uname.vue'),
    props:true
  },
  {
    path: '/video/:id',
    component: () => import(/* webpackChunkName: "video" */ '../views/Video.vue'),
    props:true
  },
]

const router = new VueRouter({
  routes
})

export default router
