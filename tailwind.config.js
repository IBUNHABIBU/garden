module.exports = {
  // ... your existing content and plugins ...
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#f0f9ff',
          100: '#e0f2fe',
          200: '#bae6fd',
          300: '#7dd3fc',
          400: '#38bdf8',
          500: '#0ea5e9', 
          600: '#0284c7', // Original - consider changing to 500 or 400
          700: '#0369a1',
          800: '#075985',
          900: '#0c4a6e',
        },
        // ... rest of your config
      },
      // Add button-specific styles
      boxShadow: {
        btn: '0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)',
        'btn-hover': '0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)'
      }
    }
  }
}