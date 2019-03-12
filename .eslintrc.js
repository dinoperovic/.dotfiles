module.exports = {
  extends: [
    'eslint:recommended',
    'plugin:vue/recommended',
    'plugin:react/recommended',
    'prettier',
    'prettier/vue',
    'prettier/react'
  ],
  plugins: ['vue', 'react', 'react-hooks'],
  env: {
    es6: true,
    node: true,
    browser: true
  }
}
