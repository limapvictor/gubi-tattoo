<template>
  <div id="app" class="m-0 h-screen bg-black text-white">
    <Header />
    <Content />
  </div>
</template>

<script>
import Header from './components/template/Header.vue';
import Content from './components/template/Content.vue';

export default {
  name: 'App',
  components: { Header, Content },
};
</script>

<style>

</style>
