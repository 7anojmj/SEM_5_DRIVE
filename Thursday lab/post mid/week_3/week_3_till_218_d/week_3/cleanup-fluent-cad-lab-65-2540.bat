echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v191\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v191\fluent\ntbin\win64\tell.exe" cad-lab-65 54508 CLEANUP_EXITING
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 9380) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 6640) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 1064) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 6444) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 2540) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 9800)
del "C:\Users\student\Desktop\week_3\week_3\cleanup-fluent-cad-lab-65-2540.bat"
