@ECHO OFF
REM
REM Startup script for Apache
REM
REM %1 - 'start' | 'stop'

SETLOCAL EnableDelayedExpansion

IF "%1" == "start" (

    FOR %%A IN ( "%~dp0.." ) DO SET "SERVER_ROOT=%%~fA"

    "!SERVER_ROOT!\bin\httpd" -f "%~dp0conf\httpd.conf"

) ELSE (

    IF "%1" == "stop" (

        TASKKILL /F /T /IM httpd.exe > NUL 2>& 1
        DEL "%~dp0tmp\apache.pid" > NUL 2>& 1

    )

)
