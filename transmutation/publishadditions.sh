#!/bin/sh

echo "Symphony's Portrait Publishing"

echo Converting additions to DDS

./crunch -file "./additions/t*.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet
./crunch -file "./additions/s*.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet
./crunch -file "./additions/l*.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet
./crunch -file "./additions/h*.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat dds -dxt1 -yflip -quiet

echo DDS Portraits Conversion Finished

echo Converting medium sources to TGA for character generation

./crunch -file "./additions/*m.png" -outdir "../Arelith Player Portrait Pack/portraits/" -fileformat tga -quiet

echo Conversion Finished