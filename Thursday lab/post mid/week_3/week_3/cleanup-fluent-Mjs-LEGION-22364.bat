echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\ANSYSS~1\v212\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\ANSYSS~1\v212\fluent\ntbin\win64\tell.exe" Mjs-LEGION 12345 CLEANUP_EXITING
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 14756) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 24772) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 26620) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 23356) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 22364) 
if /i "%LOCALHOST%"=="Mjs-LEGION" (%KILL_CMD% 27320)
del "C:\Z-EMULATOR FILES\SEM 5\Thursday lab\post mid\week_3\week_3\cleanup-fluent-Mjs-LEGION-22364.bat"
