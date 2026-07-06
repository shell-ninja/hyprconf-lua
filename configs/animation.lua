-- animation.lua
-- Custom bezier curves and animation definitions.
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

hl.config({
    animations = {
        enabled = true,
    },
})

-- Bezier curves
hl.curve("fluent_decel",   { type = "bezier", points = { { 0.1,  1    }, { 0,    1    } } })
hl.curve("md3_decel",      { type = "bezier", points = { { 0.05, 0.7  }, { 0.1,  1    } } })
hl.curve("md3_accel",      { type = "bezier", points = { { 0.3,  0    }, { 0.8,  0.15 } } })
hl.curve("elegant_bounce", { type = "bezier", points = { { 0.55, 1.07 }, { 0.28, 1.12 } } })
hl.curve("backward",       { type = "bezier", points = { { 0.49, 0.09 }, { 0.38, 1.24 } } })
hl.curve("linear",         { type = "bezier", points = { { 0,    0    }, { 1,    1    } } })
hl.curve("almostLinear",   { type = "bezier", points = { { 0.5,  0.5  }, { 0.75, 1    } } })
hl.curve("quick",          { type = "bezier", points = { { 0.15, 0    }, { 0.1,  1    } } })

-- Spring curve
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

-- Animations
hl.animation({ leaf = "global",           enabled = true,  speed = 10,   bezier = "default"         })
hl.animation({ leaf = "border",           enabled = true,  speed = 3,    bezier = "md3_decel"        })
hl.animation({ leaf = "borderangle",      enabled = true,  speed = 30,   bezier = "linear",          style = "loop"              })
hl.animation({ leaf = "windows",          enabled = true,  speed = 4.79, spring = "easy"             })
hl.animation({ leaf = "windowsIn",        enabled = true,  speed = 5,    bezier = "elegant_bounce",  style = "slide down"        })
hl.animation({ leaf = "windowsOut",       enabled = true,  speed = 4,    bezier = "md3_accel",       style = "slide up"          })
hl.animation({ leaf = "windowsMove",      enabled = true,  speed = 5,    bezier = "fluent_decel",    style = "slide"             })
hl.animation({ leaf = "fade",             enabled = true,  speed = 3,    bezier = "md3_decel"        })
hl.animation({ leaf = "fadeIn",           enabled = true,  speed = 1.73, bezier = "almostLinear"     })
hl.animation({ leaf = "fadeOut",          enabled = true,  speed = 1.46, bezier = "almostLinear"     })
hl.animation({ leaf = "layers",           enabled = true,  speed = 3.81, bezier = "fluent_decel"     })
hl.animation({ leaf = "layersIn",         enabled = true,  speed = 4,    bezier = "fluent_decel",    style = "slide"             })
hl.animation({ leaf = "layersOut",        enabled = true,  speed = 4,    bezier = "md3_accel",       style = "slide"             })
hl.animation({ leaf = "fadeLayersIn",     enabled = true,  speed = 1.79, bezier = "almostLinear"     })
hl.animation({ leaf = "fadeLayersOut",    enabled = true,  speed = 1.39, bezier = "almostLinear"     })
hl.animation({ leaf = "workspaces",       enabled = true,  speed = 5,    bezier = "fluent_decel",    style = "slidevert"         })
hl.animation({ leaf = "workspacesIn",     enabled = true,  speed = 1.21, bezier = "almostLinear",    style = "fade"              })
hl.animation({ leaf = "workspacesOut",    enabled = true,  speed = 1.94, bezier = "almostLinear",    style = "fade"              })
hl.animation({ leaf = "specialWorkspace", enabled = true,  speed = 5,    bezier = "md3_decel",       style = "slidefadevert 15%" })
