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
    extend: {
      keyframes: {
        fadeInOut: {
          '0%': { opacity: '1', maxHeight: 'auto' },
          '99%': { opacity: '0', maxHeight: '0px' },
          '100%': { display: 'none', maxHeight: 'opx' },
        }
      },
      animation: {
        fadeInOut: 'fadeInOut 4s ease-in-out forwards',
      }
    }
  },
}
