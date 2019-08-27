echo off
title Symphony's Portrait Publishing
cls
echo Convert portrait sources directory to KTX and TGA for mobile pack website upload (Releases).
echo.
echo Featuring Symmetric's nwn_crunch.exe
echo.
echo Last update to /sources directory:
forfiles /p .. /m sources /c "cmd /c echo @file @fdate @ftime"
echo.
echo Ready to convert sources to KTX
pause
echo Converting to KTX
echo =====================
nwn_crunch.exe -file -i "..\sources\*t.png" -outdir "..\Arelith Mobile Player Portrait Pack\portraits" -fileformat ktx -ETC2
nwn_crunch.exe -file -i "..\sources\*s.png" -outdir "..\Arelith Mobile Player Portrait Pack\portraits" -fileformat ktx -ETC2
nwn_crunch.exe -file -i "..\sources\*l.png" -outdir "..\Arelith Mobile Player Portrait Pack\portraits" -fileformat ktx -ETC2
nwn_crunch.exe -file -i "..\sources\*h.png" -outdir "..\Arelith Mobile Player Portrait Pack\portraits" -fileformat ktx -ETC2
echo.
echo DDS Portraits Conversion Finished
echo.
echo Ready to convert medium portraits to TGA
echo Converting to TGA
echo =====================
nwn_crunch.exe -file -i "..\sources\*m.png" -outdir "..\Arelith Mobile Player Portrait Pack\portraits" -fileformat tga
echo Conversion Finished
pause