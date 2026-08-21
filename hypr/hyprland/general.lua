local vars = require("variables")

hl.config({
    general = {
        layout = "dwindle",

        allow_tearing = false,

        gaps_in = vars.windowGapsIn,
        gaps_out = vars.windowGapsOut,
        border_size = vars.windowBorderSize,

        col = {
            active_border = vars.activeWindowBorderColor,
            inactive_border = vars.inactiveWindowBorderColor,
        },
    },

    dwindle = {
        preserve_split = true,
        smart_split = false,
        smart_resizing = true,
    },
})
