<template>
  <container>
    <sec id="titles">
      <page-title>
        Gabe Dunn.
        <template #subtitle>Full-stack web & software developer.</template>
      </page-title>
    </sec>

    <main-sec>
      <div class="prose prose-lg">
        <p>
          Hello! I am a full-stack web and software developer based in Western
          Canada and I've been working on software for the past
          {{ years }} years.
        </p>
        <p>
          Most recently, I've been focusing on immutable & reproducible builds
          with NixOS, maintaining multiple packages in nixpkgs, and managing my
          homelab with continuous integration and deployment.
        </p>
        <p>
          If you are interested in working with me please reach out via any of
          the contacts listed below.
        </p>
        <p>
          Check out my <router-link to="/projects">projects</router-link> page
          to learn more about some of the projects I've worked on.
        </p>
      </div>
    </main-sec>
  </container>
</template>

<script>
import MainSec from '../components/layout/MainSec.vue'
import Container from '../components/layout/Container.vue'
import PageTitle from '../components/titles/PageTitle.vue'
import Sec from '../components/layout/Sec.vue'

import toWords from '../assets/js/toWords.js'

export default {
  name: 'Home',
  components: { Sec, PageTitle, Container, MainSec },
  computed: {
    years() {
      const yearsSince = (from, to) =>
        Math.abs(
          Math.round(
            (to.getTime() - from.getTime()) / (1000 * 60 * 60 * 24 * 365.25)
          )
        )
      return toWords(yearsSince(new Date('2015-10-15'), new Date()))
    }
  }
}
</script>
