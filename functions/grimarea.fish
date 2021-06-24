function grimarea
	set timestamp (date +%m%d%H%M%S)
	grim -g (slurp) - | swappy -f - -o $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	if test -s $HOME/Pictures/Screenshots/screenshot-$timestamp.png
		notify-send --icon=$HOME/Pictures/Screenshots/screenshot-$timestamp.png "Screenshot in $HOME/Pictures/Screenshots/screenshot-$timestamp.png"
	else
		rm $HOME/Pictures/Screenshots/screenshot-$timestamp.png
	end
	
end
