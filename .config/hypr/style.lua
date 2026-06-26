require("style/decoration")

local theme = {
    text = "#cdd6f4",
    base = "#1e1e2e"
}

hl.config({
    general = {
        gaps_in  = 4,
        gaps_out = 8,

        border_size = 1,
        col = {
            active_border   = theme.text,
            inactive_border = theme.base
        },

        allow_tearing = false,
        layout = "dwindle"
    },

    dwindle = {
        preserve_split = true
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true
    },

    animations = { enabled = true }
})

require("style/animations")
