local vars = require("variables")

hl.config({
    input = {
        kb_layout = vars.keyboardLayout,
        repeat_delay = 250,
        repeat_rate = 35,

        sensitivity = vars.mouseSensitivity,
        accel_profile = "flat",
        follow_mouse = 1,
        focus_on_close = 0,
    },
})
