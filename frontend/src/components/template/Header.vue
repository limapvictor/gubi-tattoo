<template>
  <header class="header flex flex-row items-center justify-between flex-wrap">
    <div id="top-line" class="w-full h-2 bg-yellow-600"></div>
    <a class="ml-6">
      <h2>Teste esq</h2>
    </a>
    <div class="py-3 px-3 space-x-4 mt-6 bgp
      flex flex-row items-center justify-between rounded-sm ">
      <a class="p-1 w-auto inline-block rounded-sm
        bg-transparent hover:bg-black border-2 border-yellow-600
        text-center text-yellow-600 font-bold"
        href="">
        Cadastro
      </a>
      <a class="p-1 font-semibold rounded-sm hover:bg-black" href="">Login</a>
      <form class="w-full max-w-sm">
        <div class="flex items-center border border-white">
          <input class="w-full appearance-none
          bg-transparent border-none text-gray-700"
          type="text">
          <i class="px-1 text-gray-600 fa fa-search fa-md"></i>
        </div>
      </form>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',
};
</script>

<style>
  .header {
    grid-area: header;
  }

  .bgp {
    background: rgba(39, 39, 39, 0.45);
  }
</style>
