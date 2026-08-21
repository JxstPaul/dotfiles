local vars = require("variables")

hl.config({
    decoration = {
        rounding = vars.windowRounding,

        blur = {
            enabled = vars.blurEnabled,
            xray = vars.blurXray,
            ignore_opacity = true,
            new_optimizations = true,
            size = vars.blurSize,
            passes = vars.blurPasses,
        },

        shadow = {
            enabled = vars.shadowEnabled,
        },
    }
})
