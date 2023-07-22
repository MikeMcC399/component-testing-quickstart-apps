module.exports = {
  root: true,
  env: {
    browser: true,
    es2020: true,
    'cypress/globals': true,
    node: true
  },
  extends: [
    'eslint:recommended',
    "plugin:cypress/recommended",
    "plugin:mocha/recommended",
    'plugin:react/recommended',
    'plugin:react/jsx-runtime',
    'plugin:react-hooks/recommended',
  ],
  ignorePatterns: ['dist', '.eslintrc.cjs'],
  parserOptions: { ecmaVersion: 'latest', sourceType: 'module' },
  settings: { react: { version: '18.2' } },
  plugins: [
    'cypress',
    'mocha',
    'react-refresh'
  ],
  rules: {
    'react-refresh/only-export-components': [
      'warn',
      { allowConstantExport: true },
    ],
    'mocha/no-mocha-arrows': 'off'
  },
}
