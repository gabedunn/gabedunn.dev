import { createRouter, createWebHistory } from 'vue-router'

import index from './pages/index.vue'

export default createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      component: index
    },
    {
      path: '/projects',
      component: index // TODO: switch to projects page
    },
    {
      path: '/*',
      component: index // TODO: switch to error page
    }
  ]
})
