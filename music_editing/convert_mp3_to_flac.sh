for i in *.mp3; do
    ffmpeg -i $i $(basename $i .mp3).flac
done
