-- Load all modules and all animations/look and feel
require("modules.monitors")
require("modules.exec-once")
require("modules.animations")
require("modules.keybinds")
require("modules.env")

-- Styling

hl.config({
	input = {
		kb_layout = "us",
		follow_mouse = 1,
		sensitivity = -0.5,
		accel_profile = "flat",

		touchpad = {
			natural_scroll = false,
			tap_to_click = true,
		},
	},

	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 3,
		layout = "dwindle",

		col = {
			active_border = "rgb(98971a)",
			inactive_border = "rgb(504945)",
		},
	},

	decoration = {
		rounding = 0,
		rounding_power = 4,

		active_opacity = 1.0,
		inactive_opacity = 0.92,

		dim_inactive = true,
		dim_strength = 0.04,

		shadow = {
			enabled = true,
			range = 14,
			render_power = 4,
			color = "rgb(282828)",
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			noise = 0.01,
			contrast = 1.0,
			brightness = 1.0,
			vibrancy = 0.1696,
		},
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})
