# Awk script to find unintentionally repeated words in 'myfile.txt'.
# The script prints each repeated word in the order of occurrence, one word per line, without duplicates.

{
    # convert current record to lower case
    line = tolower($0)

    # split line into words using non-word characters as delimiters 
    n = split(line, words, /[^a-z0-9_]+/)

    for(i=1;i<n;i++){
        if(words[i] == words[i+1] && !(words[i] in printed)){
            print words[i]
            printed[words[i]] = 1
        }
    }

}