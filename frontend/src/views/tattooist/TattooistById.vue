<template>
  <div class="tattooist-by-id min-w-full">
    <div class="tattooist-info mx-6 flex flex-row flex-wrap justify-between">
      <div class="tattooist-img h-64">
        <img :src="tattooist.img"
          class="w-full md:w-auto py-4 h-full">
        </div>
      <div class="tattooist-personal-info flex flex-col
        justify-center content-between">
        <h3>{{tattooist.address}}</h3>
        <h1 class="font-bold">{{tattooist.name}}</h1>
      </div>
      <div class="tattooist-social flex flex-col justify-center">
        <h4>
          Avaliação do Tatuador:
          <span class="pl-3 font-bold">{{tattooist.avaliation}}</span>
          <i class="pl-2 fa fa-star"></i>
        </h4>
      </div>
    </div>
    <div class="tattooist-tattoos mx-6 flex flex-row flex-wrap
      justify-between">
      <div class="flex flex-row tattoo h-64 w-3/12" v-for="(tattoo, index) in tattoos"
        :key="tattoo.src">
        <img :src="tattoo.src" class="flex w-7/12 rounded-sm"
          :class="[getImageHeightClass(index), getAlignFlex(index)]">
      </div>
    </div>
    <div class="tattooist-description mt-4 py-4 bg-yellow-700
      flex flex-col space-y-4">
      <h1 class="font-bold text-3xl text-center">SOBRE MIM</h1>
      <p class="text-center px-10">
        {{tattooist.description}}
      </p>
      <div class="social-buttons self-center space-x-8">
        <i class="fa fa-twitter"></i>
        <i class="fa fa-facebook"></i>
        <i class="fa fa-instagram"></i>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'TattoistById',
  data() {
    return {
      tattooist: {
        name: 'Edson Frangoso',
        address: 'Sao Paulo, SP - Brazil',
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a tincidunt elit, et mollis ligula. Donec suscipit nibh quis vulputate tempor. Sed eget suscipit tortor. Proin in mollis nisl. Vivamus ullamcorper fermentum tortor, eget rhoncus augue interdum quis. Proin suscipit felis elit, in pharetra nibh hendrerit eu. Curabitur gravida, diam non finibus pulvinar, velit elit aliquet leo, non rhoncus nunc neque vel orci. Fusce condimentum sollicitudin consequat.',
        img: 'https://plataoplomo.com.br/wp-content/uploads/2020/05/como-escolher-primeira-tatuagem-1200x675.jpg',
        avaliation: 4.6,
      },
      tattoos: [
        { src: 'https://i.pinimg.com/originals/29/0a/ac/290aacfcd9330645654e7b1cff605423.jpg' },
        { src: 'https://s3-blog.tattoo2me.com/wp-content/uploads/2020/01/1*KHQ9QGHQh3XowS-Wm08J6A.jpeg' },
        { src: 'https://i.pinimg.com/originals/29/0a/ac/290aacfcd9330645654e7b1cff605423.jpg' },
        { src: 'https://s3-blog.tattoo2me.com/wp-content/uploads/2020/01/1*KHQ9QGHQh3XowS-Wm08J6A.jpeg' },
        { src: 'https://s3-blog.tattoo2me.com/wp-content/uploads/2020/01/1*KHQ9QGHQh3XowS-Wm08J6A.jpeg' },
        { src: 'https://i.pinimg.com/originals/29/0a/ac/290aacfcd9330645654e7b1cff605423.jpg' },
        { src: 'https://s3-blog.tattoo2me.com/wp-content/uploads/2020/01/1*KHQ9QGHQh3XowS-Wm08J6A.jpeg' },
        { src: 'https://i.pinimg.com/originals/29/0a/ac/290aacfcd9330645654e7b1cff605423.jpg' },
      ],
    };
  },
  methods: {
    getImageHeightClass(index) {
      let imageLarge = (index % 2 === 0);
      imageLarge = (Math.floor(index / 4) % 2 === 0) ? imageLarge : !imageLarge;
      const imageHeight = imageLarge ? 'h-full' : 'h-48';
      return imageHeight;
    },
    getAlignFlex(index) {
      return (Math.floor(index / 4) % 2 === 0) ? 'self-start' : 'self-end';
    },
  },
};
</script>

<style>

</style>
