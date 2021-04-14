function colorednumbers
    for COLORS in (seq 0 255)
        echo -ne "\e[38;5;$COLORS""m $COLORS"
    end
end
