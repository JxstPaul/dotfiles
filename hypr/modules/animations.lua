hl.config({ animations = { enabled = true } })

hl.curve("wind", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
hl.curve("winIn", { type = "bezier", points = { {0.1, 1.1}, {0.1, 1.1} } })
hl.curve("winOut", { type = "bezier", points = { {0.3, -0.3}, {0, 1} } })
hl.curve("linear", { type = "bezier", points = { {1, 1}, {1, 1} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 6, bezier = "wind",   slide })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 6, bezier = "winIn",  slide })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5, bezier = "winOut", slide })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "wind",   slide })

hl.animation({ leaf = "border", enabled = true, speed = 1,  bezier = "linear" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "wind" })

hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1} } })
hl.animation({ leaf = "fadeIn",  enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",    enabled = true, speed = 3.03, bezier = "almostLinear" })
