-- keybinds.lua
local mainMod     = "SUPER"
local ctrl        = "CTRL"
local alt         = "ALT"
local shift       = "SHIFT"

local scripts_dir = os.getenv("HOME") .. "/.hyprconf/hypr/scripts"

-- Helper functions
local function bind(mods, key, dispatcher, arg)
    hypr.bind(mods, key, dispatcher, arg or "")
end
local function bindm(mods, mouse, dispatcher, arg)
    hypr.bindm(mods, mouse, dispatcher, arg or "")
end

-- Variables
local wallpaper = scripts_dir .. "/Wallpaper.sh"
local wallpaperSelect = scripts_dir .. "/WallpaperSelect.sh"
local terminal = "kitty"
local file_man = "dolphin || thunar"
local term_file_man = "yazi"
local rofi_emoji = scripts_dir .. "/rofi-emoji.sh"
local help = scripts_dir .. "/keybinds.sh"
local volumeCTRL = scripts_dir .. "/volumecontrol.sh"
local apps = scripts_dir .. "/apps.sh"

-- Wallpaper
bind(mainMod, "W", "exec", wallpaper)
bind(mainMod .. "+SHIFT", "W", "exec", wallpaperSelect .. " thm1")
bind(mainMod .. "+CTRL+SHIFT", "W", "exec", wallpaperSelect .. " thm2")

-- Secure mode
bind("", "F8", "exec", scripts_dir .. "/secure_mode.sh")

-- Screenshot
bind("", "print", "exec", scripts_dir .. "/screenshot.sh")

-- Help
bind(mainMod .. "+SHIFT", "H", "exec", help)

-- Terminal & apps
bind(mainMod, "Return", "exec", terminal .. " --title main")
bind(mainMod .. "+SHIFT", "Return", "exec", terminal .. " --title floating")
bind(mainMod, "Q", "killactive")
bind(mainMod, "E", "exec", file_man)
bind(mainMod .. "+SHIFT", "E", "exec", terminal .. " --title " .. term_file_man .. " -e " .. term_file_man)
bind(mainMod, "V", "togglefloating")
bind(mainMod .. "+ALT", "v", "exec", "hyprctl dispatch workspaceopt allfloat")
bind(mainMod, "F", "fullscreen")
bind(mainMod, "D", "exec", scripts_dir .. "/menu.sh || pkill rofi")
bind(mainMod .. "+ALT", "D", "exec", scripts_dir .. "/rofi_theme.sh")
bind(mainMod .. "+ALT", "c", "exec", scripts_dir .. "/cliphist.sh c")
bind(mainMod .. "+ALT", "w", "exec", scripts_dir .. "/cliphist.sh w")
bind(mainMod .. "+SHIFT", "D", "exec", rofi_emoji)
bind(mainMod .. "+SHIFT", "P", "pseudo")

-- Logout
bind(mainMod, "X", "exec", scripts_dir .. "/wlogout.sh 2")
bind(mainMod .. "+ALT", "X", "exec", scripts_dir .. "/wlogout.sh 1")

-- Apps
bind(mainMod, "C", "exec", "code || codium")
bind(mainMod, "B", "exec", scripts_dir .. "/browser.sh op")
bind(mainMod .. "+SHIFT", "B", "exec", "brave --incognito")
bind(alt, "B", "exec", scripts_dir .. "/default_browser.sh --reset")

-- Waybar
bind(ctrl, "ESCAPE", "exec", scripts_dir .. "/waybar-reload.sh --reload")
bind(ctrl .. "+ALT", "ESCAPE", "exec", scripts_dir .. "/waybar-reload.sh --toggle")

-- Lock & theme
bind(mainMod .. "+SHIFT", "L", "exec", "hyprlock")
bind(mainMod .. "+ALT", "L", "exec", scripts_dir .. "/hyprlock.sh")
bind(mainMod .. "+ALT", "L", "exec", scripts_dir .. "/toggle_dark_light.sh") -- may conflict with above, keep as-is

-- Layout & dots
bind(mainMod .. "+CTRL", "W", "exec", scripts_dir .. "/waybar-layout.sh")
bind(mainMod .. "+CTRL", "E", "exec", scripts_dir .. "/edit-dotfiles.sh")
bind(mainMod .. "+ALT", "B", "exec", scripts_dir .. "/shell.sh")
bind(mainMod .. "+CTRL", "R", "exec", "hyprctl reload && notify-send 'Done' 'Hyprland reload'")
bind(ctrl, "U", "exec", scripts_dir .. "/systemupdate.sh --update")
bind(mainMod .. "+CTRL", "U", "exec", "kitty --title browser sh -c '" .. scripts_dir .. "/hyprconf.sh'")
bind(mainMod .. "+SHIFT", "R", "exec", scripts_dir .. "/startup.sh &> /dev/null")
bind(mainMod, "S", "exec", "kitty --title browser sh -c '" .. scripts_dir .. "/settings.sh'")
bind(mainMod, "T", "exec", scripts_dir .. "/dark_light.sh")
bind(mainMod .. "+ALT", "U", "exec", "kitty sh -c '" .. scripts_dir .. "/uninstall.sh'")
bind(mainMod, "F1", "exec", scripts_dir .. "/animations_toggle.sh")

-- Colors regeneration
bind(mainMod .. "+CTRL", "P", "exec", scripts_dir .. "/regenerate-colors.sh")

-- Window switcher
bind(mainMod, "Tab", "exec", "rofi -show window -theme ~/.config/rofi/themes/rofi-window.rasi")

-- Window cycling / grouping
bind(alt, "tab", "cyclenext")
bind(alt, "tab", "bringactivetotop")
bind(mainMod, "G", "togglegroup")
bind(mainMod, "M", "exec", "hyprctl dispatch splitratio 0.3")
bind(mainMod, "P", "pseudo")

-- Audio control
bind("", "F9", "exec", volumeCTRL .. " --toggle")
bind("", "F10", "exec", volumeCTRL .. " --dec")
bind("", "F11", "exec", volumeCTRL .. " --inc")
bind("", "XF86AudioMute", "exec", volumeCTRL .. " --toggle")
bind("", "XF86AudioLowerVolume", "exec", volumeCTRL .. " --dec")
bind("", "XF86AudioRaiseVolume", "exec", volumeCTRL .. " --inc")

-- Brightness
bind("", "F4", "exec", "~/.config/hypr/scripts/brightness.sh up")
bind("", "F3", "exec", "~/.config/hypr/scripts/brightness.sh down")
bind("", "XF86MonBrightnessUP", "exec", "~/.config/hypr/scripts/brightness.sh up")
bind("", "XF86MonBrightnessDOWN", "exec", "~/.config/hypr/scripts/brightness.sh down")

-- Move focus
bind(mainMod, "J", "movefocus", "d")
bind(mainMod, "K", "movefocus", "u")
bind(mainMod, "L", "movefocus", "r")
bind(mainMod, "H", "movefocus", "l")

-- Move window
bind(mainMod .. "+CTRL", "J", "movewindow", "d")
bind(mainMod .. "+CTRL", "K", "movewindow", "u")
bind(mainMod .. "+CTRL", "L", "movewindow", "r")
bind(mainMod .. "+CTRL", "H", "movewindow", "l")

-- Resize (arrow keys)
bind(mainMod, "left", "resizeactive", "-50 0")
bind(mainMod, "right", "resizeactive", "50 0")
bind(mainMod, "up", "resizeactive", "0 -50")
bind(mainMod, "down", "resizeactive", "0 50")

-- Workspaces 1–10
for i = 1, 10 do
    local num = tostring(i)
    bind(mainMod, num, "workspace", num)
    bind(mainMod .. "+SHIFT", num, "movetoworkspace", num)
    bind(mainMod .. "+ALT", num, "movetoworkspacesilent", num)
end

-- Scroll workspaces
bind(mainMod, "mouse_down", "workspace", "e+1")
bind(mainMod, "mouse_up", "workspace", "e-1")

-- Mouse move/resize
bindm(mainMod, "mouse:272", "movewindow")
bindm(mainMod, "mouse:273", "resizewindow")

-- Pyprland
bind(mainMod, "A", "exec", "pypr toggle term")
bind(mainMod, "N", "exec", "pypr toggle_special minimized")
bind(mainMod .. "+SHIFT", "N", "togglespecialworkspace", "minimized")
bind(mainMod .. "+SHIFT", "Z", "exec", "pypr zoom ++0.5")
bind(mainMod, "Z", "exec", "pypr zoom")
