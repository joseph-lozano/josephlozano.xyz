module.exports = {
  purge: ["lib/joseph_lozan_web/templates/**/*.html*"],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [require("@tailwindcss/typography")],
};
