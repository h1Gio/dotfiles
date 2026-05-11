-------------------
-- ANIMATIONS -----
-------------------

hl.config({
	animations = {
		enabled = true,
	},
})

-- Custom curves
hl.curve("easeOut", {
	type = "bezier",
	points = {
		{ 0.25, 0.9 },
		{ 0.3, 1.0 },
	},
})

hl.curve("easeIn", {
	type = "bezier",
	points = {
		{ 0.3, 0.0 },
		{ 0.7, 0.1 },
	},
})

-- Windows
hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 4,
	bezier = "easeOut",
	style = "slide",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 3,
	bezier = "easeIn",
	style = "slide",
})

hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 3,
	bezier = "easeOut",
})

-- Fade
hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 3,
	bezier = "easeOut",
})

hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 3,
	bezier = "easeIn",
})

hl.animation({
	leaf = "fadeSwitch",
	enabled = true,
	speed = 2,
	bezier = "easeOut",
})

hl.animation({
	leaf = "fadeDim",
	enabled = true,
	speed = 2,
	bezier = "easeOut",
})

hl.animation({
	leaf = "fadeShadow",
	enabled = true,
	speed = 2,
	bezier = "easeOut",
})

-- Workspaces
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 4,
	bezier = "easeOut",
	style = "slide",
})

-- Layers (waybar, rofi, notifications)
hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 3,
	bezier = "easeOut",
	style = "fade",
})

hl.animation({
	leaf = "layersOut",
	enabled = true,
	speed = 2,
	bezier = "easeIn",
	style = "fade",
})

-- Scratchpad / special workspace
hl.animation({
	leaf = "specialWorkspace",
	enabled = true,
	speed = 4,
	bezier = "easeOut",
	style = "slidefade",
})

-- Borders
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 3,
	bezier = "easeOut",
})
