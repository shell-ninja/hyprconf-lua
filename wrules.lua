-- wrules.lua
-- Uses variables from configs.lua (global)

-- Helper to float+center
local function float_center(class)
    hypr.rule("windowrulev2", "float, class:" .. class)
    hypr.rule("windowrulev2", "center, class:" .. class)
end

float_center("org.kde.polkit-kde-authentication-agent-1")
float_center("xfce-polkit")
float_center("pavucontrol")
float_center("org.pulseaudio.pavucontrol")
float_center("nwg-look")
float_center("qt5ct")
float_center("qt6ct")
float_center("file-roller")
float_center("org.gnome.FileRoller")
float_center("[Kk]vantummanager")
float_center("[Ll]xappearance")
float_center("eog")
float_center("[Tt]hunar")
float_center("[Gg]nome-disks")
float_center("com.obsproject.Studio")
float_center("org.kde.kcalc")
float_center("org.telegram.desktop")
float_center("org.kde.partitionmanager")
float_center("org.kde.gwenview")
float_center("localsend")
float_center("com.gabm.satty")
float_center("org.gnome.Nautilus")
float_center("codium")
float_center("codium-url-handler")
float_center("VSCodium")
float_center("com.heroicgameslauncher.hgl")
float_center("[Ss]team")
float_center("xdg-desktop-portal-gtk")
float_center("electron")

-- Specific titles
hypr.rule("windowrulev2", "float, title:^(Authentication Required)$")
hypr.rule("windowrulev2", "center, title:^(Authentication Required)$")

-- File manager progress dialogs
hypr.rule("windowrulev2", "float, title:^(File Operation Progress)$, class:^([Tt]hunar)$")
hypr.rule("windowrulev2", "center, title:^(File Operation Progress)$, class:^([Tt]hunar)$")
hypr.rule("windowrulev2", "float, title:^(Confirm to replace files)$, class:^([Tt]hunar)$")
hypr.rule("windowrulev2", "center, title:^(Confirm to replace files)$, class:^([Tt]hunar)$")

-- Kitty titles
hypr.rule("windowrulev2", "float, class:^(kitty)$, title:^(update|floating|yazi|monitor|browser)$")
hypr.rule("windowrulev2", "center, class:^(kitty)$, title:^(yazi|update|browser)$")

-- Size rules
hypr.rule("windowrulev2", "size monitor_w*0.55 monitor_h*0.75, class:^([Kk]vantummanager)$")
hypr.rule("windowrulev2", "size monitor_w*0.55 monitor_h*0.75, class:^([Ll]xappearance)$")
hypr.rule("windowrulev2", "size monitor_w*0.55 monitor_h*0.75, class:^(nwg-look)$")
hypr.rule("windowrulev2", "size monitor_w*0.55 monitor_h*0.75, class:^(eog)$")
hypr.rule("windowrulev2", "size monitor_w*0.55 monitor_h*0.75, class:^([Tt]hunar)$")
hypr.rule("windowrulev2", "size monitor_w*0.7 monitor_h*0.7, class:^(xdg-desktop-portal-gtk)$")
hypr.rule("windowrulev2", "size monitor_w*0.6 monitor_h*0.7, class:^(pavucontrol|org.pulseaudio.pavucontrol)$")
hypr.rule("windowrulev2", "size monitor_w*0.7 monitor_h*0.8, class:^(kitty)$, title:^(update)$")
hypr.rule("windowrulev2", "size monitor_w*0.6 monitor_h*0.6, class:^(kitty)$, title:^(yazi)$")
hypr.rule("windowrulev2", "size monitor_w*0.5 monitor_h*0.55, class:^(kitty)$, title:^(monitor)$")
hypr.rule("windowrulev2", "size monitor_w*0.5 monitor_h*0.6, class:^(kitty)$, title:^(browser)$")
hypr.rule("windowrulev2", "size monitor_w*0.55 monitor_h*0.75, class:^(kitty)$, title:^(floating)$")
hypr.rule("windowrulev2", "size monitor_w*0.5 monitor_h*0.7, class:^(com.obsproject.Studio)$")
hypr.rule("windowrulev2", "size monitor_w*0.6 monitor_h*0.8, class:^(org.telegram.desktop)$")
hypr.rule("windowrulev2", "size monitor_w*0.6 monitor_h*0.8, class:^(org.kde.gwenview)$")
hypr.rule("windowrulev2", "size monitor_w*0.5 monitor_h*0.6, class:^(org.kde.partitionmanager)$")
hypr.rule("windowrulev2", "size monitor_w*0.3 monitor_h*0.55, class:^(org.kde.kcalc)$")
hypr.rule("windowrulev2", "size monitor_w*0.3 monitor_h*0.2, class:^(xfce-polkit)$")
hypr.rule("windowrulev2", "size monitor_w*0.4 monitor_h*0.4, class:^(localsend)$")
hypr.rule("windowrulev2", "size monitor_w*0.6 monitor_h*0.6, class:^(com.gabm.satty)$")

-- Opacity
hypr.rule("windowrulev2", "opacity " .. opacity_act .. " " .. opacity_deact .. ", tag:file-manager")
hypr.rule("windowrulev2", "opacity 1.0 " .. opacity_deact .. ", tag:browser")

-- Workspace assignment
hypr.rule("windowrulev2", "workspace 1, class:^(kitty)$, title:^(main)$")
hypr.rule("windowrulev2", "workspace 2, tag:browser")
hypr.rule("windowrulev2", "workspace 3, tag:ide")
hypr.rule("windowrulev2", "workspace 3, class:^(com.obsproject.Studio)$")

-- Special workspace exposed
hypr.set("workspace", "special:exposed,gapsout:60,gapsin:30,bordersize:5,border:true,shadow:false")

-- Layer rules
hypr.rule("layerrule", "blur, rofi")
hypr.rule("layerrule", "blur, notifications")
hypr.rule("layerrule", "blur, gtk-layer-shell")
hypr.rule("layerrule", "blur, waybar")
