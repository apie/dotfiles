function addtag
    # Adds the provided tag to all the files that dont already have it. In the current dir and under.
    test (count $argv) -eq 0; and return 1
    set tname $argv[1]
    find . -type f ! -name '*_tag:'$tname'*' -exec dtag {} $tname \;
end
