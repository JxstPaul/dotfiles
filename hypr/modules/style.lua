require("colors")

hl.config({
    general = {
		gaps_in = 4,
		gaps_out = 8,

		border_size = 1,
		col = { inactive_border = base, active_border = active },

		allow_tearing = false,
		layout = "dwindle"
	},

	decoration = {
		rounding = 10,
		rounding_power = 2.5,

		active_opacity = 1.0,
		inactive_opacity = 0.77,

		shadow = { enabled = false },

		blur = {
			enabled = true,
			noise = 0.01,
			vibrancy = 0.2,
			passes = 1,
			size = 2
		}
	},

	dwindle = {
        preserve_split = true,
        force_split = 2
    },

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true
	}
})
