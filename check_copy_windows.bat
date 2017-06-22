set DIR1=%1
set DIR2=%2

fciv -add %DIR1% -r -sha1 -wp >%TEMP%\dir1.txt
findstr /r "^[0-9abcdef][0-9abcdef]*" %TEMP%\dir1.txt >%TEMP%\dir11.txt

fciv -add %DIR2% -r -sha1 -wp >%TEMP%\dir2.txt
findstr /r "^[0-9abcdef][0-9abcdef]*" %TEMP%\dir2.txt >%TEMP%\dir22.txt

fciv -add %TEMP%\dir11.txt -sha1
fciv -add %TEMP%\dir22.txt -sha1
