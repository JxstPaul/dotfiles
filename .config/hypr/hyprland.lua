require("settings/monitors")

---- AUTOSTART ----
hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
end)

---- ENVIRONMENT VARIABLES ----
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS -----
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool>

require("style")
require("settings/input")

---- WINDOWS AND WORKSPACES ----
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rul>
-- and https://wiki.hypr.land/Configuring/Basics/Workspace->

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize"
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true
})

suppressMaximizeRule:set_enabled(true)
