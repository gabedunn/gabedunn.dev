<template>
  <navbar />
  <router-view />
  <foot />
</template>

<script>
  import Navbar from './components/Navbar.vue'
  import Foot from './components/Foot.vue'

  export default {
    name: 'App',
    components: {
      Navbar,
      Foot
    }
  }
</script>

<style>
  html,
  body,
  #app {
    min-height: 100vh;
  }
</style>
