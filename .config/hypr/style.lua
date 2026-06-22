hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 8,

        border_size = 1,
        col = {
            active_border   = "rgba(88888888)",
            inactive_border = "rgba(00000088)",
        },

        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2.5,

        active_opacity   = 1.0,
        inactive_opacity = 0.8,

        shadow = {
            enabled      = true,
            color        = "rgba(00000055)",
            offset       = { 2, 2 },
            range        = 3,
            render_power = 1
        },

        blur = {
            enabled  = true,
            noise    = 0.01,
            vibrancy = 0.2,
            passes   = 1,
            size     = 2
        },
    },

    animations = { enabled = true }
})

hl.config({
    dwindle = {
        preserve_split = true
    }
})

require("style/animations")
