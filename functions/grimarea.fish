function grimarea
	set timestamp (date +%m%d%H%M%S)
	grim -g (slurp) -  | wl-copy; wl-paste > $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	if test -s $HOME/Pictures/Screenshots/screenshot-$timestamp.png
		notify-send Screenshot\ in\ $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	else
		rm $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	end
	
end
