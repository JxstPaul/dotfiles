require("style/colors")

hl.config({
	general = {
		gaps_in  = 4,
		gaps_out = 8,

		border_size = 1,
		col = {
			inactive_border = base,
			active_border = active
		},

		allow_tearing = false,
		layout = "dwindle"
	},

	dwindle = { preserve_split = true },

    misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo   = true
    },

    animations = { enabled = true }
})

require("style/decoration")
require("style/animations")
