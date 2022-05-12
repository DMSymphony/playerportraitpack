echo off
title Symphony's Portrait Publishing
cls
echo Convert portrait sources directory to webp for APPPBrowser and Arelith Portal Page.
echo.
echo Featuring Google's cwebp
echo.
echo Last update to /sources directory:
forfiles /p .. /m sources /c "cmd /c echo @file @fdate @ftime"
echo.
echo Ready to convert sources to webp
pause
echo Converting to webp
echo =====================
forfiles /P ..\sources\female /M *h.png /c "cmd /c ..\..\transmutation\cwebp.exe -m 6 -lossless -noalpha -hint picture @relpath -o ..\..\browser\female\\@fname.webp"
forfiles /P ..\sources\male /M *h.png /c "cmd /c ..\..\transmutation\cwebp.exe -m 6 -lossless -noalpha -hint picture @relpath -o ..\..\browser\male\\@fname.webp"
forfiles /P ..\sources\other /M *h.png /c "cmd /c ..\..\transmutation\cwebp.exe -m 6 -lossless -noalpha -hint picture @relpath -o ..\..\browser\other\\@fname.webp"
echo Renaming files to portraitID
ren "..\browser\female\*_h.webp" "*_"
ren "..\browser\male\*_h.webp" "*_"
ren "..\browser\other\*_h.webp" "*_"
ren "..\browser\female\*_" "*_.webp"
ren "..\browser\male\*_" "*_.webp"
ren "..\browser\other\*_" "*_.webp"
echo.
echo Conversion Finished
pause