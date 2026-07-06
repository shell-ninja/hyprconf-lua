-- animation.lua
hypr.set("animations", {
    enabled = true,
    bezier = {
        { name = "fluent_decel",   params = { 0.1, 1, 0, 1 } },
        { name = "md3_decel",      params = { 0.05, 0.7, 0.1, 1 } },
        { name = "md3_accel",      params = { 0.3, 0, 0.8, 0.15 } },
        { name = "elegant_bounce", params = { 0.55, 1.07, 0.28, 1.12 } },
        { name = "backward",       params = { 0.49, 0.09, 0.38, 1.24 } },
        { name = "linear",         params = { 1, 1, 1, 1 } },
    },
    animation = {
        { name = "windowsIn",        enabled = true, speed = 5,  curve = "elegant_bounce", style = "slide down" },
        { name = "windowsOut",       enabled = true, speed = 4,  curve = "md3_accel",      style = "slide up" },
        { name = "windowsMove",      enabled = true, speed = 5,  curve = "fluent_decel",   style = "slide" },
        { name = "border",           enabled = true, speed = 3,  curve = "md3_decel" },
        { name = "borderangle",      enabled = true, speed = 30, curve = "linear",         style = "loop" },
        { name = "fade",             enabled = true, speed = 3,  curve = "md3_decel" },
        { name = "workspaces",       enabled = true, speed = 5,  curve = "fluent_decel",   style = "slidevert" },
        { name = "specialWorkspace", enabled = true, speed = 5,  curve = "md3_decel",      style = "slidefadevert 15%" },
        { name = "layersIn",         enabled = true, speed = 4,  curve = "fluent_decel",   style = "slide" },
        { name = "layersOut",        enabled = true, speed = 4,  curve = "md3_accel",      style = "slide" },
    },
})
