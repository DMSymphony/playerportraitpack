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
echo Ready to convert sources to DDS. Press Enter to begin.
pause
echo Converting to DDS
echo =====================
nwn_crunch.exe -file "..\sources\*\*h.png" -outdir ".\haktemp" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file "..\sources\*\*l.png" -outdir ".\haktemp" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file "..\sources\*\*m.png" -outdir ".\haktemp" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file "..\sources\*\*s.png" -outdir ".\haktemp" -fileformat dds -DXT1 -yflip -quiet
nwn_crunch.exe -file "..\sources\*\*t.png" -outdir ".\haktemp" -fileformat dds -DXT1 -yflip -quiet
echo.
echo DDS Portraits Conversion Finished
echo.
echo Ready to compile DDS files into patch hak. Press Enter to begin.
pause
nwn_erf.exe -c -f "..\Arelith Player Portrait Patch Pack\" haktemp
echo.
echo Patch Hak Creation Finished
DEL .\haktemp\*dds
echo Temp DDS files deleted.
echo.
echo Ready to convert medium portraits to TGA. Press Enter to begin.
pause
echo Converting to TGA
echo =====================
nwn_crunch.exe -file "..\sources\*\*m.png" -outdir "..\Arelith Player Portrait Patch Pack\portraits" -fileformat tga -quiet
echo Conversion Finished
pause