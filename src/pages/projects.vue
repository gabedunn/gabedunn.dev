<template>
  <container>
    <sec id="title">
      <page-title>
        projects
        <template #subtitle>
          A list of some of my projects, with a link to the project page and
          github, if it is public.
        </template>
      </page-title>
    </sec>
    <main-sec>
      <div class="grid grid-cols-3 gap-6">
        <card
          v-for="project in projects"
          :key="project.name"
          :title="project.name"
          :image="project.image"
          :href="project.href"
        >
          <template v-if="project.github" #title>
            <span>
              <a :href="project.href" target="_blank">{{ project.name }}</a> |
              <a :href="`https://github.com/${project.github}`" target="_blank">
                github
              </a>
            </span>
          </template>
          <template v-else #title>
            <a :href="project.href" target="_blank">{{ project.name }}</a>
          </template>
          {{ project.description }}
          <template #footer>
            <span
              v-for="skill in project.skills"
              :key="skill"
              class="badge"
              v-text="skill"
            />
          </template>
        </card>
      </div>
    </main-sec>
  </container>
</template>

<script>
  import Container from '../components/layout/Container.vue'
  import PageTitle from '../components/titles/PageTitle.vue'
  import MainSec from '../components/layout/MainSec.vue'
  import Card from '../components/Card.vue'
  import Sec from '../components/layout/Sec.vue'

  export default {
    components: { Sec, Card, MainSec, PageTitle, Container },
    data() {
      return {
        projects: [
          {
            name: 'gabedunn.dev',
            description: 'This website. My personal website and portfolio.',
            href: 'https://gabedunn.dev',
            github: 'redxtech/gabedunn.dev',
            image: 'https://i.imgur.com/a3USZLo.png',
            skills: ['vue', 'vite', 'tailwind', 'vue3']
          },
          {
            name: 'when.',
            description:
              'A simple website to show when the next episode of your favourite TV shows will air.',
            href: 'https://when.redxte.ch',
            github: 'redxtech/when',
            image: 'https://i.imgur.com/CjOQSan.png',
            skills: ['vue', 'APIs', 'OAuth2', 'fetch', 'flux']
          },
          {
            name: 'canmore-brewing',
            description:
              'A landing page and informative website for a local brewery.',
            href: 'https://canmorebrewing.com',
            image: 'https://i.imgur.com/tlZ4dsK.png',
            skills: ['vue', 'APIs', 'google maps']
          },
          {
            name: 'devmod',
            description: 'A moderation bot for a discord server.',
            href: 'https://devcord.com',
            github: 'redxtech/devmod',
            image: 'https://i.imgur.com/ltBwusB.png',
            skills: ['node', 'discord.js', 'async', 'moderation']
          },
          {
            name: 'devcord',
            description:
              'A discord community that brings together web developers of all experience levels.',
            href: 'https://devcord.com',
            github: 'devcord',
            image: 'https://i.imgur.com/Ov3QJaB.png',
            skills: ['discord', 'developer', 'community']
          },
          {
            name: 'vue-plyr',
            description: 'A vue component for the plyr video & audio player.',
            href: 'https://github.com/redxtech/vue-plyr',
            github: 'redxtech/vue-plyr',
            image: 'https://i.imgur.com/6FtNns2.png',
            skills: ['vue', 'js', 'npm', 'components']
          }
        ]
      }
    }
  }
</script>

<style>
  .badge {
    @apply inline-flex items-center mx-1 px-2 py-0.5 rounded text-xs font-medium leading-4 bg-gray-100 text-gray-800;

    &:first-child {
      @apply ml-0;
    }

    &:last-child {
      @apply mr-0;
    }
  }
</style>
