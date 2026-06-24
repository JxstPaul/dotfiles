require("monitors") -- Initializes monitors

---- AUTOSTART ----
hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper")
end)

---- ENVIRONMENT VARIABLES ----
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

----- PERMISSIONS -----
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

require("style") -- Modifies the look and feel
require("input") -- Sets keybinds & input settings

---- WINDOWS AND WORKSPACES ----
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

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
