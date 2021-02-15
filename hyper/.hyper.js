module.exports = {
  config: {
    // Choose either "stable" for receiving highly polished,
    // or "canary" for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: 'JetBrains Mono NL, Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    fontWeightBold: 900, 

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#cc241d',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BEAM',

    // set to true for blinking cursor
    cursorBlink: true,

    // color of the text
    foregroundColor: '#a89984',

    // terminal background color
    backgroundColor: '#14161b',

    // border color (window, tabs)
    borderColor: '#14161b',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '5px 10px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: "#14161b",
      red: "#cc241d",
      green: "#98971a",
      yellow: "#d79921",
      blue: "#4187ac",
      magenta: "#b16286",
      cyan: "#689d6a",
      white: "#a89984",
      lightBlack: "#4f483e",
      lightRed: "#cc241d",
      lightGreen: "#98971a",
      lightYellow: "#d79921",
      lightBlue: "#4187ac",
      lightMagenta: "#b16286",
      lightCyan: "#689d6a",
      lightWhite: "#a89984"
    },

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  }
};
