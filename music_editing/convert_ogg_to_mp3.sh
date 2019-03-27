for i in *.ogg; do
    soundconverter -b -m audio/mpeg -s .mp3 $i
done
