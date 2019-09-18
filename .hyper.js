// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
    config: {
        verminal: {
            fontFamily: '"MesloLGSDZ Nerd Font"',
            fontSize: 15,
            backgroundColor: 'rgba(0, 0, 0, 0.4)'
        },

        // Choose either "stable" for receiving highly polished,
        // or "canary" for less polished but more frequent updates
        updateChannel: 'stable',

        // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
        cursorShape: 'BLOCK',

        // set to true for blinking cursor
        cursorBlink: true,

        // Background color
        // backgroundColor: '#000',

        // custom padding (css format, i.e.: `top right bottom left`)
        // padding: '14px 14px 14px 14px',

        // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
        // if left empty, your system's login shell will be used by default
        // shell: '/usr/local/bin/fish',

        // for environment variables
        env: {},

        // window size
        windowSize: [1100, 700],

        // set to false for no bell
        bell: false,

        // if true, selected text will automatically be copied to the clipboard
        copyOnSelect: false
    },

    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    // 	 `verminal`
    //   `hypercwd`
    //   `hyper-snazzy`
    plugins: ["verminal", "hypercwd"],

    // Notes: "hyper-statusline" must be last in the list for the color scheme to apply
};
