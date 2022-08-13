echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\ANSYSS~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\ANSYSS~1\v212\fluent\ntbin\win64\tell.exe" Mjs-LEGION 12590 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 25684) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 28044) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 5420) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 24084) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 2372) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 12236)
del "C:\Z-EMULATOR FILES\SEM 5\Thursday lab\post mid\week_3\week_3\cleanup-fluent-Mjs-LEGION-2372.bat"
