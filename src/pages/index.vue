<template>
  <main class="px-4 md:px-8 flex flex-col justify-between">
    <div id="home" class="container mx-auto my-24 flex-1">
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
    </div>
  </main>
</template>

<script>
  export default {
    name: 'Index'
  }
</script>

<style>
  main {
    height: calc(100vh - 210px);
  }
</style>
