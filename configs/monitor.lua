-- monitor.lua
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Catch-all default monitor
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

-- Explicit monitor override (edit to match your hardware)
-- hl.monitor({
--     output   = "HDMI-A-1",
--     mode     = "1920x1080@75",
--     position = "0x0",
--     scale    = 1,
-- })
