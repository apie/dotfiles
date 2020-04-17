function klaar
    # Let the user know when a command is done. A different message for success/failure is used.
    # Usage:
    # 1. <command> | klaar
    # 2. <command>; klaar
    # 3. klaar <command>
    # In the last case also the command is printed.

    set KLAAR 'Ik ben klaar'
    set FOUT 'Er ging iets mis'
    if eval $argv
        espeak -v nl "$KLAAR"
        and notify-send "$KLAAR" "$argv"

    else
        espeak -v nl "$FOUT"
        and notify-send "$FOUT" "$argv"
    end
end
