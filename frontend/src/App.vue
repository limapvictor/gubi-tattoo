<template>
  <div id="app" class="m-0 min-h-screen bg-black text-white grid">
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
#app {
  grid-template-areas: 'header' 'content' 'footer';
  grid-template-rows:12vh 1fr 5vh;
}
</style>
