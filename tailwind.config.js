// tailwind.config.js
module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/components/**/*.rb'
  ],
  theme: {
    extend: {
      colors: {
        // Modern color palette
        primary: {
          50: '#f0f9ff',
          100: '#e0f2fe',
          200: '#bae6fd',
          300: '#7dd3fc',
          400: '#38bdf8',
          500: '#0ea5e9', // Base primary
          600: '#0284c7',
          700: '#0369a1',
          800: '#075985',
          900: '#0c4a6e',
        },
        secondary: {
          500: '#8b5cf6', // Violet
        },
        dark: {
          500: '#1e293b', // Slate-800
          600: '#0f172a', // Slate-900
        },
        light: '#f8fafc' // Slate-50
      },
      fontFamily: {
        sans: ['Inter', 'ui-sans-serif', 'system-ui'],
      },
      backdropBlur: {
        xs: '2px',
        sm: '4px',
        md: '8px',
        lg: '12px',
        xl: '20px',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],

  variants: {
    extend: {
      backdropBlur: ['responsive', 'hover'],
      opacity: ['disabled'],
    }
  }
}