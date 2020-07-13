<template>
  <div class="content pt-1 pb-4">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'Content',
};
</script>

<style>
  .content {
    grid-area: content;
  }
</style>
