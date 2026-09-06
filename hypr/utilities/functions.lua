local function bind(keybinds, action, flags)
    if type(keybinds) == "table" then
        for _, key in pairs(keybinds) do
            hl.bind(key, action, flags)
        end
    else
        hl.bind(keybinds, action, flags)
    end
end

local function extend(base, suffix)
    return base .. " + " .. suffix
end

return {
    bind = bind,
    extend = extend,
}
