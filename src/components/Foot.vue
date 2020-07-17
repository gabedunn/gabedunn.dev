<template>
  <footer class="container mx-auto py-12 flex">
    <ul class="mx-auto font-light">
      <li
        v-for="contact in contacts"
        :key="contact.href"
        class="inline px-2 md:px-8"
      >
        <a
          :href="contact.href"
          :target="contact.target"
          v-text="contact.name"
        />
      </li>
    </ul>
  </footer>
</template>

<script>
  export default {
    name: 'Foot',
    data() {
      return {
        contacts: [
          {
            name: 'email',
            href: 'mailto:gabe@gabedunn.dev',
            target: ''
          },
          {
            name: 'linkedin',
            href: 'https://www.linkedin.com/in/gabe-dunn-148142142/',
            target: '_blank'
          },
          {
            name: 'dev.to',
            href: 'https://dev.to/redxtech',
            target: '_blank'
          },
          {
            name: 'discord server',
            href: 'https://devcord.com/',
            target: '_blank'
          }
        ]
      }
    }
  }
</script>

<style>
  footer {
    border-top: 1px solid rgba(0, 157, 231, 0.3);
  }
</style>
