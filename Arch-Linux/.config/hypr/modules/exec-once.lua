-- Autostarts

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("flameshot")
	hl.exec_cmd("swaybg -i ~/Pictures/wallpapers/wallpapers/MIDDLE/wallhaven-d82pgl_1920x1080.png")
	hl.exec_cmd("mako")
	hl.exec_cmd("blueman-applet --no-tray")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)
