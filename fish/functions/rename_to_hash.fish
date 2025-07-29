# Use something like this to find and rename files that are not yet renamed:
# rename_to_hash (find . -maxdepth 1 -type f -name '*' -regextype posix-extended ! -regex '^\./.{32}\..{3,4}')

function rename_to_hash
    # Argument required
    test -z "$argv"; and return 1;
    # Argument must be existing file/dir
    ls $argv; or return 1;
    # pause here and print list. break cancels the operation.
    read --prompt-str 'Ik ga bovenstaande files hernoemen. OK?'; or return 1
    for filename in $argv
       md5sum $filename | read --nchars 32 sum
       mv -v "$filename" (path dirname "$filename")/"$sum"(path extension "$filename")
    end
end
