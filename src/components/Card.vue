<template>
  <article>
    <div
      class="rounded overflow-hidden shadow-md hover:shadow-xl transition duration-150 ease-in-out"
      :class="style"
    >
      <a :href="href" target="_blank">
        <!--suppress HtmlUnknownTarget -->
        <img class="w-full" :src="image" alt="Sunset in the mountains" />
      </a>
      <div class="px-6 my-4">
        <section-title class="mb-2"><slot name="title" /></section-title>
        <text-content darker>
          <slot />
        </text-content>
      </div>
      <div v-if="$slots.footer" class="px-6 my-4">
        <slot name="footer" />
      </div>
    </div>
  </article>
</template>

<script>
  import SectionTitle from './titles/SectionTitle.vue'
  import TextContent from './TextContent.vue'

  export default {
    name: 'Card',
    components: { TextContent, SectionTitle },
    props: {
      image: {
        type: String,
        required: true
      },
      href: {
        type: String,
        required: true
      },
      size: {
        type: String,
        required: false,
        default: 'xs',
        validator: value =>
          [
            'xs',
            'sm',
            'md',
            'lg',
            'xl',
            '2xl',
            '3xl',
            '4xl',
            '5xl',
            '6xl'
          ].some(v => v === value)
      }
    },
    computed: {
      style() {
        return [`max-w-${this.size}`]
      }
    }
  }
</script>
