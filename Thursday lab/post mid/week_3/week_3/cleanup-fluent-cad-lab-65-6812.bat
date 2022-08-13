echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v191\fluent/ntbin/win64/winkill.exe"

"C:\PROGRA~1\ANSYSI~1\v191\fluent\ntbin\win64\tell.exe" cad-lab-65 61613 CLEANUP_EXITING
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 4944) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 7240) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 3628) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 7216) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 6812) 
if /i "%LOCALHOST%"=="cad-lab-65" (%KILL_CMD% 9792)
del "C:\Users\student\Desktop\week_3\week_3\cleanup-fluent-cad-lab-65-6812.bat"
