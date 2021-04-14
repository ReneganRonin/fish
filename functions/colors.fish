function colors
    for i in (seq 10)
        for x in (seq 30 37)
                for a in (seq 40 47)
                    echo -ne "\e[$i;$x;$a""m\\\e[$i;$x;$a""m\e[0;37;40m "
                end
            echo
        end
    end
end
