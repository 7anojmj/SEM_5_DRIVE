echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v191\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v191\fluent\ntbin\win64\tell.exe" cad-lab-65 65090 CLEANUP_EXITING
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 2928) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 10308) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 7372) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 10584) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 7164) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 668)
del "C:\Users\student\Desktop\week_3\week_3\cleanup-fluent-cad-lab-65-7164.bat"
