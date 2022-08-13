echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v191\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v191\fluent\ntbin\win64\tell.exe" cad-lab-65 59574 CLEANUP_EXITING
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 5332) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 10576) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 9976) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 1332) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 8872) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 5172)
del "C:\Users\student\Desktop\week_3\week_3\cleanup-fluent-cad-lab-65-8872.bat"
