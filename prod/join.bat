@echo off

echo wscript.quit MsgBox ("Continue?", 4, "Please choose") > yesno.vbs
wscript //nologo yesno.vbs
set value=%errorlevel%
del yesno.vbs
if "%value%"=="6" TYPE ZIGI* > BrandedOnline.txt
if "%value%"=="7" msg * you canceled!


exit >nul


