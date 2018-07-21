@echo off
set "filePath=%1"
set TIME=%TIME: =0%
set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
echo %filePath%
echo %1
echo %1 | clip
copy /y %1 %1_%DateTimeFn%
pause > nul