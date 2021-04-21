function klaar
    # Let the user know when a command is done. A different message for success/failure is used.
    # Usage:
    # 1. <command> | klaar
    # 2. <command>; klaar
    # 3. klaar <command>
    # In the last case also the command is printed.

    if eval $argv
        set MSG 'Ik ben klaar'
    else
        set MSG 'Er ging iets mis'
    end
    notify-send "$MSG" "$argv"
    espeak -v nl "$MSG"
end
