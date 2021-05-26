function grimarea
	grim -g (slurp) -  | wl-copy; wl-paste > $HOME/Pictures/Screenshots/screenshot-(date +%m%d%H%M%S).png; notify-send Screenshot\ in\ $HOME/Pictures/Screenshots/screenshot-(date +%m%d%H%M%S).png
end
