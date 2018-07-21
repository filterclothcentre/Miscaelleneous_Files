@echo off
setlocal EnableExtensions EnableDelayedExpansion
set TIME=%TIME: =0%
set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_!TIME:~0,2!_!TIME:~3,2!_!TIME:~6,2!
::copy /y "%1" "%1_!DateTimeFn!"
echo %1
echo %~1
echo %~s1
echo "%1"
echo "%~1"
copy /y "%~1" "%~1_!DateTimeFn!"
pause > nul
exit /b 1