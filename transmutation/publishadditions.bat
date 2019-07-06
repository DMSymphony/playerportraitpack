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
nwn_crunch.exe -file ".\additions\*t.png" -outdir "..\Arelith Player Portrait Pack\portraits" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file ".\additions\*s.png" -outdir "..\Arelith Player Portrait Pack\portraits" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file ".\additions\*l.png" -outdir "..\Arelith Player Portrait Pack\portraits" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file ".\additions\*h.png" -outdir "..\Arelith Player Portrait Pack\portraits" -fileformat dds -DXT1 -yflip -quiet
echo.
echo DDS Portraits Conversion Finished
echo.
echo Ready to convert medium portraits additions to TGA
echo Converting to TGA
echo =====================
nwn_crunch.exe -file ".\additions\*m.png" -outdir "..\Arelith Player Portrait Pack\portraits" -fileformat tga -quiet
echo Conversion Finished
pause