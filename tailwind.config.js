// tailwind.config.js
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
  ],
  theme: {
    extend: {
      extend: {
      animation: {
        'safari-pulse': 'pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        },
      colors: {
        primary: {
          DEFAULT: '#1E5631',
          light: '#2E7D32',
        },
        secondary: {
          DEFAULT: '#A0522D',
          light: '#C17C3F',
        },
        accent: {
          DEFAULT: '#F6BE00',
          dark: '#D4A017',
        },
      },
    },
  },
  },
  plugins: [],
}