tag=$1 #first arg is the tag to change
#Options are: ALBUM, ARTIST, TITLE, TRACKNUMBER, DATE, GENRE, COMMENTS

new_val=$2 #new value to be stored in the tag category

#positional arguments have been left shifted, so $3 becomes $1
shift 2

#Iterates through list of files supplied as $2 to the last one
for i; do
    metaflac --remove-tag=$tag "--set-tag=$tag=$new_val" "$i"
    metaflac --list "$i" | grep comment #show changes
done
