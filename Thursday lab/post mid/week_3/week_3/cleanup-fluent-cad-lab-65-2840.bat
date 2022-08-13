echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v191\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v191\fluent\ntbin\win64\tell.exe" cad-lab-65 62894 CLEANUP_EXITING
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 7620) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 5540) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 6496) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 10868) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 2840) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 10268)
del "C:\Users\student\Desktop\week_3\week_3\cleanup-fluent-cad-lab-65-2840.bat"
