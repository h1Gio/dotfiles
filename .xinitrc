# chmod +x ~/.xinitrc

# Autostart apps
feh --bg-scale ~/Downloads/forest2.jpg &  # set wallpaper
kitty &	# Autostart the terminal
picom & # For terminal handling
# Kill any existing bars (in case of reloads)
killall -q polybar

# Wait until polybar finishes shutting down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch your bar (use the name from your config: [bar/example])
polybar top &

# Start sxwm
exec sxwm
