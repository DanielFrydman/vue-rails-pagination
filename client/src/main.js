import ApiClient from "./api/axios.js";
import Router from "./router/index.js";
import App from './App.vue';

import { createApp } from 'vue'

const app = createApp(App);
app.mixin({
  beforeCreate() {
    this.$apiClient = ApiClient();
  },
});
app.use(Router);
app.mount('#app');