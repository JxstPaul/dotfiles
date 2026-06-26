hl.config({
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
        }
    }
})
