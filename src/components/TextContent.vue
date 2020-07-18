<template>
  <div
    class="text-base leading-6"
    :class="{ 'text-gray-700': darker, 'text-gray-500': !darker }"
  >
    <slot />
  </div>
</template>

<script>
  export default {
    name: 'TextContent',
    props: {
      darker: {
        type: Boolean,
        required: false,
        default: false
      }
    }
  }
</script>
