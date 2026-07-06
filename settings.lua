-- settings.lua
hypr.set("input", {
    kb_layout = "us",
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",
    repeat_rate = 40,
    repeat_delay = 200,
    numlock_by_default = true,
    left_handed = false,
    follow_mouse = 1,
    float_switch_override_focus = false,
    touchpad = {
        disable_while_typing = true,
        natural_scroll = true,
        clickfinger_behavior = false,
        middle_button_emulation = true,
        tap_to_click = true,
        drag_lock = false,
    },
    sensitivity = 0,
})

hypr.set("gestures", {
    workspace_swipe_distance = 400,
    workspace_swipe_invert = true,
    workspace_swipe_min_speed_to_force = 30,
    workspace_swipe_cancel_ratio = 0.5,
    workspace_swipe_create_new = true,
    workspace_swipe_forever = true,
})

hypr.set("misc", {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    vrr = 2,
    mouse_move_enables_dpms = true,
    enable_swallow = true,
    swallow_regex = "^(kitty)$",
    focus_on_activate = false,
    initial_workspace_tracking = 0,
    middle_click_paste = false,
})

hypr.set("dwindle", { preserve_split = true })
hypr.set("master", { new_status = "master" })
hypr.set("binds", {
    workspace_back_and_forth = true,
    allow_workspace_cycles = true,
    pass_mouse_when_bound = false,
})
hypr.set("xwayland", {
    enabled = true,
    force_zero_scaling = true,
})
hypr.set("cursor", {
    inactive_timeout = 30,
    sync_gsettings_theme = true,
    no_hardware_cursors = false,
    enable_hyprcursor = true,
    warp_on_change_workspace = 2,
    no_warps = true,
})
