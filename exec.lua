-- exec.lua
local scripts_dir = os.getenv("HOME") .. "/.hyprconf/hypr/scripts"

hypr.exec_once("hyprctl setcursor Bibata-Modern-Ice 24")
hypr.exec_once(scripts_dir .. "/startup.sh")
hypr.exec_once("waybar & swaync & hypridle")
hypr.exec_once("blueman-applet &")
hypr.exec_once(scripts_dir .. "/polkit.sh")
hypr.exec_once("wl-paste --type text --watch cliphist store")
hypr.exec_once("wl-paste --type image --watch cliphist store")
hypr.exec_once("pypr &")
