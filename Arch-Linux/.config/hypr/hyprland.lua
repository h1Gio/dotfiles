-- Load all modules and all animations/look and feel
require("modules.monitors")
require("modules.exec-once")
require("modules.animations")
require("modules.keybinds")
require("modules.env")

-- Styling

hl.config({
	input = {
		kb_layout = "es",
		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = false,
			tap_to_click = true,
		},
	},

	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
		layout = "dwindle",

		col = {
			active_border = "rgb(98971a)",
			inactive_border = "rgba(313244aa)",
		},
	},

	decoration = {
		rounding = 10,
		rounding_power = 4,

		active_opacity = 1.0,
		inactive_opacity = 0.92,

		dim_inactive = true,
		dim_strength = 0.08,

		shadow = {
			enabled = true,
			range = 16,
			render_power = 0,
			color = "rgba(00000066)",
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
