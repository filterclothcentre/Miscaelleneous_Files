@echo off & setlocal enabledelayedexpansion & set TIME=%TIME: =0% >nul & set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%-!TIME:~0,2!-!TIME:~3,2!-!TIME:~6,2! >nul & echo !DateTimeFn! & pause

cmd /c &setlocal enabledelayedexpansion & set TIME=%TIME: =0% >nul & set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_!TIME:~0,2!_!TIME:~3,2!_!TIME:~6,2! & copy /y %1 %1_%DateTimeFn%