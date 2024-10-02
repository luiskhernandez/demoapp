/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
    './app/components/**/*.{erb,rb}',
    'node_modules/preline/dist/*.js',
    'test/components/previews/**/**/*.html.erb',
  ],
  theme: {
    extend: {},
  },
  plugins: [
      require('preline/plugin'),
  ],
}
