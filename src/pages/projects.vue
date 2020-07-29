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
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <card
          v-for="project in projects"
          :key="project.name"
          :title="project.name"
          :image="project.image"
          :href="project.url"
          size="lg"
        >
          <template v-if="project.github" #title>
            <span>
              <a :href="project.url" target="_blank">{{ project.name }}</a> |
              <a :href="`https://github.com/${project.github}`" target="_blank">
                github
              </a>
            </span>
          </template>
          <template v-else #title>
            <a :href="project.url" target="_blank">{{ project.name }}</a>
          </template>
          {{ project.description }}
          <template #footer>
            <!--suppress JSUnresolvedVariable -->
            <span
              v-for="skill in project.skills"
              :key="skill.skill"
              class="badge"
              v-text="skill.skill"
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

  import projects from '../assets/content/projects.json'

  export default {
    components: { Sec, Card, MainSec, PageTitle, Container },
    data() {
      return {
        projects: projects.projects
      }
    }
  }
</script>

<style>
  .badge {
    @apply inline-flex items-center mx-1 px-2 py-0.5 rounded text-xs font-medium leading-4 bg-blue-100 text-blue-800;

    &:first-child {
      @apply ml-0;
    }

    &:last-child {
      @apply mr-0;
    }
  }
</style>
