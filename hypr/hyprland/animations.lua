hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("smoothEaseOut", { type = "bezier", points = { {0.15, 1}, {0.3, 1} } })
hl.curve("springBounce", { type = "spring", mass = 0.65, stiffness = 250, dampening = 21 })
hl.curve("fastSpring", { type = "spring", mass = 0.77, stiffness = 300, dampening = 25 })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 1, spring = "springBounce" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, spring = "springBounce" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1, spring = "fastSpring" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "smoothEaseOut" })

hl.curve("smoothedLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 0.9} } })
hl.animation({ leaf = "fadeIn",  enabled = true, speed = 1.77, bezier = "smoothedLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.2, bezier = "smoothedLinear" })
hl.animation({ leaf = "fade",    enabled = true, speed = 3, bezier = "smoothedLinear" })
