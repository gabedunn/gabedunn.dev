<template>
  <navbar />
  <container class="flex-1">
    <router-view />
  </container>
  <foot />
</template>

<script>
  import Navbar from './components/Navbar.vue'
  import Foot from './components/Foot.vue'
  import Container from './components/layout/Container.vue'

  export default {
    name: 'App',
    components: {
      Container,
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

  #app {
    @apply flex flex-col;
  }
</style>
