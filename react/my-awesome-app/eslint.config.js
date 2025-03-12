import pluginReact from 'eslint-plugin-react'
import { defineConfig } from 'eslint/config'

export default defineConfig([
  {
    plugins: {
      react: pluginReact
    },
    extends: [pluginReact.configs.flat.recommended],
    settings: {
      react: {
        version: 'detect',
      }
    }
  },
]);
