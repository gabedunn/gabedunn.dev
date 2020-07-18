<template>
  <section :id="id" class="my-6 md:my-12 lg:my-18">
    <slot />
  </section>
</template>

<script>
  export default {
    name: 'Sec',
    props: {
      id: {
        type: String,
        required: true
      }
    }
  }
</script>
