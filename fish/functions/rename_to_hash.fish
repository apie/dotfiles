function rename_to_hash
    ls $argv
    # pause here and print list. break cancels the operation.
    read --prompt-str 'Ik ga bovenstaande files hernoemen. OK?'; or return 1
    md5sum $argv | 
       while read -d"  " sum filename do
           mv -v "$filename" (path dirname "$filename")/"$sum"(path extension "$filename")
       end
end
