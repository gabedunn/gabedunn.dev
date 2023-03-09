<template>
  <nav class="bg-white shadow">
    <container>
      <div class="relative flex justify-between h-16">
        <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
          <!-- Mobile menu button -->
          <button
            class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out"
            aria-label="Main menu"
            aria-expanded="false"
            @click="toggleMenu"
          >
            <!-- Icon when menu is closed. -->
            <!-- Menu open: "hidden", Menu closed: "block" -->
            <svg
              :class="menuState ? 'hidden' : 'block'"
              class="h-6 w-6"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h16M4 18h16"
              />
            </svg>
            <!-- Icon when menu is open. -->
            <!-- Menu open: "block", Menu closed: "hidden" -->
            <svg
              :class="menuState ? 'block' : 'hidden'"
              class="h-6 w-6"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M6 18L18 6M6 6l12 12"
              />
            </svg>
          </button>
        </div>
        <div
          class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start"
        >
          <div class="hidden sm:ml-6 sm:flex">
            <!--suppress JSUnresolvedVariable, JSUnusedLocalSymbols -->
            <router-link
              v-for="route in routes"
              :key="route.name"
              :to="route.path"
              class="navbar-link"
              v-text="route.name"
            />
            <a
              class="navbar-link"
              href="https://blog.gabedunn.dev"
              target="_blank"
            >
              blog
            </a>
          </div>
        </div>
      </div>
    </container>

    <!--
      Mobile menu, toggle classes based on menu state.

      Menu open: "block", Menu closed: "hidden"
    -->
    <div :class="menuState ? 'block' : 'hidden'" class="sm:hidden">
      <div class="pt-2 pb-4">
        <!--suppress JSUnresolvedVariable, JSUnusedLocalSymbols -->
        <router-link
          v-for="route in routes"
          :key="route.name"
          :to="route.path"
          class="navbar-link-mobile"
          v-text="route.name"
        />
        <a
          class="navbar-link-mobile"
          href="https://blog.gabedunn.dev"
          target="_blank"
        >
          blog
        </a>
      </div>
    </div>
  </nav>
</template>

<script>
import Container from './layout/Container.vue'

export default {
  name: 'Navbar',
  components: { Container },
  data() {
    return {
      menuState: false
    }
  },
  computed: {
    routes() {
      return this.$router
        .getRoutes()
        .filter(r => r.name !== 'notfound')
        .map(r => {
          return { name: r.name, path: r.path }
        })
    }
  },
  methods: {
    toggleMenu() {
      this.menuState = !this.menuState
    }
  }
}
</script>

<style>
.navbar-link {
  @apply ml-8 inline-flex items-center px-1 pt-1 border-b-2 border-transparent text-sm font-medium leading-5 text-gray-500 transition duration-150 ease-in-out;

  &:hover {
    @apply text-gray-700 border-gray-300;
  }

  &:focus {
    @apply outline-none text-gray-700 border-gray-300;
  }

  &.router-link-active {
    @apply border-blue-500 text-gray-900;

    &:focus {
      @apply border-blue-700;
    }
  }
}

.navbar-link-mobile {
  @apply mt-1 block pl-3 pr-4 py-2 border-l-4 border-transparent text-base font-medium text-gray-600 transition duration-150 ease-in-out;

  &:hover {
    @apply text-gray-800 bg-gray-50 border-gray-300;
  }

  &:focus {
    @apply outline-none text-gray-800 bg-gray-50 border-gray-300;
  }

  &.router-link-active {
    @apply border-blue-500 text-blue-700 bg-blue-50;

    &:focus {
      @apply text-blue-800 bg-blue-100 border-blue-700;
    }
  }
}
</style>
