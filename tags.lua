-- tags.lua
-- Browser tags
hypr.rule("windowrulev2", "tag +browser, class:^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$")
hypr.rule("windowrulev2", "tag +browser, class:^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$")
hypr.rule("windowrulev2", "tag +browser, class:^(chrome-.+-Default)$")
hypr.rule("windowrulev2", "tag +browser, class:^([Cc]hromium)$")
hypr.rule("windowrulev2", "tag +browser, class:^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$")
hypr.rule("windowrulev2", "tag +browser, class:^([Bb]rave-browser(-beta|-dev|-unstable)?)$")
hypr.rule("windowrulev2", "tag +browser, class:^([Tt]horium-browser|[Cc]achy-browser)$")
hypr.rule("windowrulev2", "tag +browser, class:^(zen-alpha|zen)$")

-- Terminal
hypr.rule("windowrulev2", "tag +terminal, class:^(Alacritty|kitty|kitty-dropterm)$")

-- File manager
hypr.rule("windowrulev2", "tag +file-manager, class:^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt|org.kde.dolphin)$")

-- IDE
hypr.rule("windowrulev2", "tag +ide, class:^(codium|codium-url-handler|VSCodium)$")
hypr.rule("windowrulev2", "tag +ide, class:^(VSCode|code-url-handler|code)$")
hypr.rule("windowrulev2", "tag +ide, class:^(jetbrains-.+)$")
