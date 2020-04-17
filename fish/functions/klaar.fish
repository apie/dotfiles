function klaar
    set KLAAR 'Ik ben klaar'
    set FOUT 'Er ging iets mis'
    if eval $argv
        espeak -v nl "$KLAAR"; and notify-send "$KLAAR"
    else
        espeak -v nl "$FOUT"; and notify-send "$FOUT"
    end
end
