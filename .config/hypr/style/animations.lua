hl.curve("wind", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
hl.curve("winIn", { type = "bezier", points = { {0.1, 1.1}, {0.1, 1.1} } })
hl.curve("winOut", { type = "bezier", points = { {0.3, -0.3}, {0, 1} } }) --Change to not be weird

hl.animation({ leaf = "windows",     enabled = 1, speed = 6, bezier = "wind",   slide })
hl.animation({ leaf = "windowsIn",   enabled = 1, speed = 6, bezier = "winIn",  slide })
hl.animation({ leaf = "windowsOut",  enabled = 1, speed = 5, bezier = "winOut", slide })
hl.animation({ leaf = "windowsMove", enabled = 1, speed = 5, bezier = "wind",   slide })

hl.animation({ leaf = "workspaces", enabled = 1, speed = 5, bezier = "wind" })
