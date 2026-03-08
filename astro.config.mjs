// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  output: 'static',
  site: 'https://ViL-TJU.github.io',
  // 如果使用自定义域名，删除下面这行
  // base: '/vil-site',
  vite: {
    plugins: [tailwindcss()]
  }
});
