<template>
  <nav class="container mx-auto">
    <ul>
      <li>
        <router-link to="/">home</router-link>
      </li>
      <li>
        <router-link to="/projects">projects</router-link>
      </li>
    </ul>
  </nav>
</template>

<script>
  export default {
    name: 'Navbar'
  }
</script>

<style>
  nav {
    border-bottom: 1px solid rgba(0, 157, 231, 0.2);
    font-weight: 300;
    padding: 0 1em;
  }
  ul {
    margin: 0;
    padding: 0;
  }
  /* clearfix */
  ul::after {
    content: '';
    display: block;
    clear: both;
  }
  li {
    display: block;
    float: left;
  }
  .selected {
    position: relative;
    display: inline-block;
  }
  .selected::after {
    position: absolute;
    content: '';
    width: calc(100% - 1em);
    height: 2px;
    background-color: rgb(0, 157, 231);
    display: block;
    bottom: -1px;
  }
  a {
    text-decoration: none;
    padding: 1em 0.5em;
    display: block;
  }
</style>
