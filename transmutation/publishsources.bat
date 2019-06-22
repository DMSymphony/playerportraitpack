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
     nwn_crunch.exe -file -i "../sources/*png" -outdir "../Arelith Player Portrait Pack/portraits" -fileformat dds -deep -DXT1 -unflip -yflip -quiet
echo.
echo DDS Portraits Conversion Finished
echo.
echo Ready to convert medium portraits to TGA
pause
echo Converting to TGA
echo =====================
     nwn_crunch.exe -file -i "../sources/*m.png" -outdir "../Arelith Player Portrait Pack/portraits" -fileformat tga -unflip -yflip -quiet
echo Conversion Finished
pause