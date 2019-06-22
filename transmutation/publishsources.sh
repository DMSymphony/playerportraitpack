#!/bin/sh

echo "Symphony's Portrait Publishing"

echo Converting sources to DDS

./crunch -file -i "../sources/*.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -deep -dxt1 -unflip -yflip -quiet

echo DDS Portraits Conversion Finished

echo Converting medium sources to TGA for character generation

./crunch -file -i "../sources/*m.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat tga -unflip -yflip -quiet

echo Conversion Finished