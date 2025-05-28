import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  base: '/bip47-verifier/',
  plugins: [react()],
})
