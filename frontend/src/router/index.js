import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';

import TattooistById from '../views/tattooist/TattooistById.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
  },
  {
    path: '/tattooist/:id',
    name: 'TatooistById',
    component: TattooistById,
  },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});

export default router;
