const colors = require("tailwindcss/colors");

module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.scss",
  ],
  darkMode: "media",
  theme: {
    extend: {
      colors: {
        grey: colors.gray,
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
