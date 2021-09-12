@echo off

net session >nul 2>&1
if errorlevel 1 exit

title MS Edge uninstaller for windows!!!
set /p c=Are You sure you want to UNINSTALL Microsoft Edge? (y/N): 
if /I "%c%" EQU "y" goto yes
goto no
:yes
echo uninstalling..........
cd /
cd Program Files (x86)
cd Microsoft
cd Edge
cd Application
if exist *1* cd *1*
if exist *2* cd *2*
if exist *3* cd *3*
if exist *4* cd *4*
if exist *5* cd *5*
if exist *6* cd *6*
if exist *7* cd *7*
if exist *8* cd *8*
if exist *9* cd *9*
if exist *0* cd *0*
cd Installer
setup.exe --uninstall --system-level --verbose-logging --force-uninstall
echo Done!


rem =======================================================================================================
rem MSEdge may come again! to avoid installing MSEdge again, so this:
rem echo.
rem open Registry Editor (regedit.exe)
rem goto HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft
rem Right Click Microsoft and select New>Key
rem Name it EdgeUpdate
rem Right Click newly created EdgeUpdate and select New>DWORD 32
rem Name it DoNotUpdateToEdgeWithChromium
rem =======================================================================================================


set /p cc=Would you like to avoid edge from reinstalling? (Y/n): 
if /I "%c%" EQU "Y" goto yy
goto n
:yy
reg add HKLM\SOFTWARE\Microsoft\EdgeUpdate
reg add HKLM\Software\Microsoft\EdgeUpdate /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1
echo.
echo If you like this, donot forget to share with your friends and family!! Thank YOU!!
echo.
echo Press any key to exit..
pause>nul
:n
exit