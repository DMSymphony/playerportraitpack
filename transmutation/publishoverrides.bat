echo off
title Symphony's Portrait Publishing
cls
echo Convert portrait sources directory to DDS and TGA for export/workshop upload.
echo.
echo Featuring Symmetric's nwn_crunch.exe
echo.
echo Last update to /sources directory:
forfiles /p .. /m sources /c "cmd /c echo @file @fdate @ftime"
echo.
echo Ready to convert sources to DDS
pause
echo Converting to DDS
echo =====================
nwn_crunch.exe -file "..\sources\female\*.png" -outdir "..\Enhanced Player Portrait Pack\override" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file "..\sources\male\*.png" -outdir "..\Enhanced Player Portrait Pack\override" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file "..\sources\other\*.png" -outdir "..\Enhanced Player Portrait Pack\override" -fileformat dds -DXT1 -yflip -quiet
echo.
echo DDS Portraits Conversion Finished
echo.
echo Ready to convert medium portraits to TGA
echo Converting to TGA
echo =====================
nwn_crunch.exe -file "..\sources\female\*m.png" -outdir "..\Enhanced Player Portrait Pack\portraits" -fileformat tga -quiet
nwn_crunch.exe -file "..\sources\male\*m.png" -outdir "..\Enhanced Player Portrait Pack\portraits" -fileformat tga -quiet
nwn_crunch.exe -file "..\sources\other\*m.png" -outdir "..\Enhanced Player Portrait Pack\portraits" -fileformat tga -quiet
echo Conversion Finished
pause