function grimshot
	set timestamp (date +%m%d%H%M%S)
	grim -  | wl-copy; wl-paste > $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	if test -s $HOME/Pictures/Screenshots/screenshot-$timestamp.png
		notify-send --icon=$HOME/Pictures/Screenshots/screenshot-$timestamp.png "Screenshot in $HOME/Pictures/Screenshots/screenshot-$timestamp.png"
	else
		rm $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	end
end
