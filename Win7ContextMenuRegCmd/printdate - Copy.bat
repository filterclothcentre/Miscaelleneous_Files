rem @echo off
rem set time=%TIME: =0%
rem set onlydate=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%
rem set onlydate2=%DATE:~7,2%-%DATE:~4,2%-%DATE:~10,4%
rem set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
rem echo %onlydate2%
rem echo %datetimef%
rem pause > nul

rem set TIME=%TIME: =0%
rem set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
rem echo %DateTimeFn%
rem pause > nul

@echo off & set TIME=%TIME: =0% & set DateTimeFn=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2% & echo %DateTimeFn% & pause > nul