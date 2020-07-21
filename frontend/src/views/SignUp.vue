<template>
  <div class="sign-up h-full">
    <div class="sign-up-presentation h-full flex flex-col
      items-center justify-center space-y-10" v-if="showPresentation">
      <div class="sign-up-text">
        <h1 class="text-4xl text-yellow-600 text-center">
          Gubizão, sua nova plataforma de divulgação
        </h1>
        <h4 class="text-lg text-center">
          E quando eu falo doka ela doka doka tudo q se passa so reflete no final
        </h4>
      </div>
      <div class="sign-up-options flex flex-row justify-around space-x-6">
        <button class="bg-yellow-600 hover:bg-yellow-800 rounded-sm
          text-white font-bold p-3" v-on:click="togglePresentation(1)">
          Cadastre-se como usuário
        </button>
        <button class="bg-yellow-600 hover:bg-yellow-800 rounded-sm
          text-white font-bold p-3" v-on:click="togglePresentation(2)">
          Cadastre-se como tatuador
          </button>
      </div>
    </div>
    <div class="sign-up-actual h-full flex flex-col
      items-center justify-center" v-else>
        <div class="sign-up-form p-16 sm:w-full lg:w-1/2
          flex flex-col items-center justify-center">
          <h2 class="text-3xl text-yellow-600 text-center mb-8">
            Cadastro de {{userType}}
          </h2>
          <form class="w-2/3">
            <input class="border-2 border-white bg-transparent rounded-sm
              w-full p-2 my-2" type="text" placeholder="Nome">
            <input class="border-2 border-white bg-transparent rounded-sm
              w-full p-2 my-2" type="email" placeholder="E-mail">
            <input class="border-2 border-white bg-transparent rounded-sm
              w-full p-2 my-2" type="password" placeholder="Senha">
            <div class="sign-up-actual-buttons flex flex-row flex-wrap
              justify-around">
              <button class="bg-yellow-600 hover:bg-yellow-800 rounded-sm
                text-white font-bold p-3">
                Salvar
              </button>
              <button class="bg-white hover:bg-gray-400 rounded-sm
                text-yellow-800 font-bold p-3" v-on:click="togglePresentation(0)">
                Voltar
              </button>
            </div>
          </form>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SignUp',
  data() {
    return {
      showPresentation: true,
      type: 0,
    };
  },
  computed: {
    userType() {
      return (this.type === 1) ? 'Usuário' : 'Tatuador';
    },
  },
  methods: {
    togglePresentation(type) {
      this.type = type;
      this.showPresentation = !this.showPresentation;
    },
  },
};
</script>

<style>
.sign-up {
  background-image: linear-gradient(to bottom, rgba(0,0,0,0.65),rgba(0,0,0,0.75)),
    url('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-sex-tattoo-artist-1587571161.jpg');
}
</style>
