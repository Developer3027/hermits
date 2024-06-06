const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        teko: ["Teko", "sans-serif"],
        kanit: ["Kanit", "sans-serif"],
      },
      colors: {
        "hermit-medium-green": "#366600",
        "hermit-olive": "#4B6600",
        "hermit-green": "#498B00",
        "hermit-yellow": "#FAF231",
        "hermit-orange": "#FDB600",
        "hermit-link": "#57B0C3",
        "hermit-red": "#FF0F00",
        "hermit-smoke": "#444444",
        "hermit-burnt": "#2F2F2F",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
