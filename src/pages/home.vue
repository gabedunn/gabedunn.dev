<template>
  <container>
    <main-sec>
      <div>
        <h1 class="title">Gabe Dunn.</h1>
        <h2 class="subtitle">Full-stack web & software developer.</h2>
      </div>

      <div class="mt-24 text-lg font-light text-justify">
        <p class="mt-4">
          Hello! I am a full-stack web and software developer based in Calgary,
          Alberta and I've been working with web technologies for the past
          {devYears} years.
        </p>
        <p class="my-4">
          If you are interested in working with me please reach out via any of
          the contacts listed below.
        </p>
        <p class="my-4">
          Check out my <a href="projects">projects</a> page to learn more about
          some of the projects I've worked on.
        </p>
      </div>
    </main-sec>
  </container>
</template>

<script>
  import MainSec from '../components/layout/MainSec.vue'
  import Container from '../components/layout/Container.vue'
  export default {
    name: 'Home',
    components: { Container, MainSec }
  }
</script>

<style>
  main {
    height: calc(100vh - 208px);
  }

  .title {
    font-family: 'TT Norms';
  }
</style>
