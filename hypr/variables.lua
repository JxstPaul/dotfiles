return {
    -- Input
    keyboardLayout = "us",
    mouseSensitivity = 0.2,

    -- Blur
    blurEnabled = true,
    blurSize = 2,
    blurPasses = 1,
    blurXray = false,

    -- Shadow
    shadowEnabled = false,
    shadowRange = 1,
    shadowRenderPower = 1,
    shadowColor = "#ffffff",

    -- Gaps
    windowGapsIn = 4,
    windowGapsOut = 8,

    -- Window styling
    windowRounding = 10,
    windowBorderSize = 1,
    activeWindowBorderColor = "#cdd6f4",
    inactiveWindowBorderColor = "#1e1e2e",

    -- Misc
    volumeStep = 5,
    cursorTheme = "macOS",
    cursorSize = 24,

    ---- KEYBINDS ----
    -- Workspaces
    keyFocusWorkspace = "SUPER",
    keyMoveToWorkspace = "SUPER + CTRL",

    -- Window actions
    keyToggleFullscreen = "F11",
    keyToggleFloating = "SUPER + mouse:272",
    keyCloseWindow = "SUPER + Q",
    keyMoveWindow = "SUPER + mouse:272",
    keyResizeWindow = "SUPER + mouse:273",

    -- Audio
    keyMuteMic = "SUPER + M",

    -- Utilities
    keyColorPicker = "SUPER + SHIFT + 2",
    keyScreenshot = "SUPER + SHIFT + 3",
    keyScreenshotRegion = "SUPER + SHIFT + 4"
}
