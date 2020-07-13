<template>
  <footer class="footer flex flex-row justify-between flex-wrap">
    <hr class="w-full"/>
    <div class="px-2">Robson Web</div>
    <div class="social-buttons space-x-8 px-2">
      <i class="fa fa-twitter"></i>
      <i class="fa fa-facebook"></i>
      <i class="fa fa-instagram"></i>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'Footer',
};
</script>

<style>
  .footer {
    grid-area: footer;
  }
</style>
