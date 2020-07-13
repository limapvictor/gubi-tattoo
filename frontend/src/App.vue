<template>
  <div id="app" class="m-0 min-h-full bg-black text-white grid-template-rows">
    <Header />
    <Content />
    <Footer />
  </div>
</template>

<script>
import Header from './components/template/Header.vue';
import Content from './components/template/Content.vue';
import Footer from './components/template/Footer.vue';

export default {
  name: 'App',
  components: { Header, Content, Footer },
};
</script>

<style>

</style>
