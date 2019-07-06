#!/bin/sh

echo "Symphony's Portrait Publishing"

echo Converting sources to DDS

./crunch -file "../sources/*t.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet
./crunch -file "../sources/*s.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet
./crunch -file "../sources/*l.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet
./crunch -file "../sources/*h.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet

echo DDS Portraits Conversion Finished

echo Converting medium sources to TGA for character generation

./crunch -file "../sources/*m.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat tga -quiet

echo Conversion Finished