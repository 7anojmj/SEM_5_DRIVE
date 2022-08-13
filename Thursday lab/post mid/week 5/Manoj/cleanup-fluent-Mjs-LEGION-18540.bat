echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\ANSYSS~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\ANSYSS~1\v212\fluent\ntbin\win64\tell.exe" Mjs-LEGION 2201 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 14720) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 18540) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 3392)
del "C:\Z-EMULATOR FILES\SEM 5\Thursday lab\post mid\week 5\Manoj\cleanup-fluent-Mjs-LEGION-18540.bat"
