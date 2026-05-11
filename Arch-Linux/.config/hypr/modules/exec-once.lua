-- Autostarts

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("copyq")
	hl.exec_cmd("flameshot")
	hl.exec_cmd("swaybg -i ~/Pictures/wallpapers/wallpapers/DARKS/moodyforest.png")
	hl.exec_cmd("mako")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("blueman-applet --no-tray")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)
