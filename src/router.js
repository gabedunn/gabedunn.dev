import { createRouter, createWebHistory } from 'vue-router'

import Home from './pages/home.vue'

export default createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/projects',
      name: 'projects',
      component: Home // TODO: switch to projects page
    },
    {
      path: '/*',
      name: 'notfound',
      component: Home // TODO: switch to error page
    }
  ]
})
