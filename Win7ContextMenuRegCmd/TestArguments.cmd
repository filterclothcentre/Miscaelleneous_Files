@echo off
set fileDirPath="%~dp1"
set /p ".=%fileDirPath%"<nul
set fileDirPath=%fileDirPath:"=%
echo|set /p=%fileDirPath%|clip
exit /b 1

cmd /c set fileDirPath="%~dp1" & echo|set /p=%%fileDirPath%%|clip & pause>nul
cmd /c set fileDirPath="%~dp1" & echo|set /p=%%fileDirPath%%|clip & exit /b 1

cmd /c set fileDirPath="""%~dp1""" & echo|set /p=%%fileDirPath%%|clip & pause>nul
cmd /c set fileDirPath="%~dp1" & echo|set /p=%%fileDirPath%%|clip & exit /b 1

cmd /c set fileDirPath=%~dp1 & echo|set /p=%%fileDirPath%%|clip & pause>nul
cmd /c set fileDirPath="%~dp1" & echo|set /p=%%fileDirPath%%|clip & exit /b 1

cmd /c set fileDirPathTmp=\"%1\" & set fileDirPath=%%fileDirPathTmp:~0,-1% & echo|set /p=%%fileDirPath%%|clip & pause>nul
cmd /c set fileDirPathTmp=\"%1\" & set fileDirPath=%fileDirPathTmp:~0,-1% & echo|set /p=%%fileDirPath%%|clip & pause>nul
cmd /c set fileDirPath=\"%1\" & echo|set /p=%%fileDirPath:~0,-1%%|clip & pause>nul
cmd /c set fileDirPath=\"%1\" & echo|set /p=%%fileDirPath:~1%%|clip & pause>nul
cmd /c set fileDirPath=\"%~dp1\" & echo|set /p=%%fileDirPath:~1%%|clip & pause>nul
cmd /c set fileDirPath=\"%1\" & set fileDirPath2=\"%fileDirPath%\\..\\" &  echo|set /p=%%fileDirPath2:~1%%|clip & pause>nul

cmd.exe /c (echo.|set /p=""%1"") | clip
cmd /c (echo.|set /p=""%1"") | clip
cmd /c (echo.|set /p=""%~dp1"") | clip
cmd.exe /c (echo.|set /p=""%~dp1"") | clip
cmd.exe /c (echo.|set /p=""%~d1"") | clip

cmd.exe setlocal enabledelayedexpansion & set FileDirPath=%1 &

cmd /v:on @echo off & EnableExtensions EnableDelayedExpansion & set TIME=%TIME: =0% & set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_!TIME:~0,2!-!TIME:~3,2!-!TIME:~6,2! & copy /y %1 %1_!DateTimeFn! & pause > nul

cmd /c /e:on /v:on @echo off & set TIME=%TIME: =0% & set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_!TIME:~0,2!-!TIME:~3,2!-!TIME:~6,2! & copy /y %1 %1_!DateTimeFn! & pause > nul

cmd /v:on /c @echo off & set TIME=%TIME: =0% & set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_!TIME:~0,2!-!TIME:~3,2!-!TIME:~6,2! & copy /y %1 %1_!DateTimeFn! & pause > nul