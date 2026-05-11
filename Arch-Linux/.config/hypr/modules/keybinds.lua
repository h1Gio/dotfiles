---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

-- Wallpapers
hl.bind(
	mainMod .. " + BACKSPACE",
	hl.dsp.exec_cmd(
		"swaybg -i ~/Pictures/wallpapers/wallpapers/DARKS/shelter-from-the-rain-by-ayuli2424-1920×1080.jpg"
	)
)

hl.bind(
	mainMod .. " + SHIFT + BACKSPACE",
	hl.dsp.exec_cmd("swaybg -i ~/Pictures/wallpapers/wallpapers/DARKS/moodyforest.png")
)

-- Applications
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty"))

hl.bind(
	mainMod .. " + SHIFT + Return",
	hl.dsp.exec_cmd(
		[[kitty -e bash -c 'fastfetch --logo-width 35 --pipe false --logo-type kitty --logo ~/.config/fastfetch/logos/wallhaven-1qk63v_2048x1295.png; exec zsh']]
	)
)

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"))

hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("rofi -show drun"))

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("spotify"))

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd([[kitty -e bash -c 'meowdo']]))

-- Window management
hl.bind(mainMod .. " + C", hl.dsp.window.close())

hl.bind(mainMod .. " + Q", hl.dsp.exit())

hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

hl.bind(mainMod .. " + S", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + R", hl.dsp.exec_cmd([[sh -c "hyprctl reload && notify-send 'Hyprland' 'Config reloaded'"]]))

-- Mouse binds

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-----------------------------
---- WINDOW NAVIGATION ------
-----------------------------

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))

---------------------
---- WORKSPACES -----
---------------------

for i = 1, 5 do
	hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))

	hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

-----------------------------
---- MULTIMEDIA / SYSTEM ----
-----------------------------

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

----------------
---- MISC ------
----------------

hl.config({
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})
