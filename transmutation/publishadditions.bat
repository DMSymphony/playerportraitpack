echo off
title Symphony's Portrait Publishing
cls
echo Convert portrait additions directory to DDS and TGA to add them to export/workshop folder.
echo.
echo Featuring Symmetric's nwn_crunch.exe
echo.
echo Ready to convert additions to DDS
pause
echo Converting to DDS
echo =====================
     nwn_crunch.exe -file -i "./additions/*png" -outdir "../Arelith Player Portrait Pack/portraits" -fileformat dds -deep -DXT1 -unflip -yflip -quiet
echo.
echo DDS Portraits Conversion Finished
echo.
echo Ready to convert medium portraits additions to TGA
pause
echo Converting to TGA
echo =====================
     nwn_crunch.exe -file -i "./additions/*m.png" -outdir "../Arelith Player Portrait Pack/portraits" -fileformat tga -unflip -yflip -quiet
echo Conversion Finished
pause