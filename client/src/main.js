import Router from "./router/index.js";
import App from './App.vue'

import { createApp } from 'vue'

const app = createApp(App);
app.use(Router);
app.mount('#app');