// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  output: 'static',
  site: 'https://ViL-TJU.github.io',
  base: '/vil-site',
  vite: {
    plugins: [tailwindcss()]
  }
});
