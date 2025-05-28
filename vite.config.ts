import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  base: '/', // Base URL für die App, Standard ist '/'
  plugins: [react()],
})
