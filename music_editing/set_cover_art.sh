cover_art=$1 #saves cover art file name as cover_art
shift #shifts all arguments left by 1

#sets the cover art of all flac files sent as arguments
for i; do
    metaflac --import-picture-from="$cover_art" "$i"
done
