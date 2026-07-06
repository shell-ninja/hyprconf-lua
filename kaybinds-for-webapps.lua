-- keybinds_webapps.lua
local apps = os.getenv("HOME") .. "/.hyprconf/hypr/scripts/apps.sh"

hypr.bind("ALT", "A", "exec", apps .. " chatgpt")
hypr.bind("CTRL+ALT", "A", "exec", apps .. " gemini.google")
hypr.bind("CTRL+ALT", "G", "exec", apps .. " grok")
hypr.bind("ALT", "F", "exec", apps .. " facebook")
hypr.bind("ALT", "Y", "exec", apps .. " youtube")
hypr.bind("ALT", "W", "exec", apps .. " web.whatsapp")
hypr.bind("ALT", "I", "exec", apps .. " instagram")
hypr.bind("ALT", "G", "exec", apps .. " github")
hypr.bind("ALT", "R", "exec", apps .. " reddit")
