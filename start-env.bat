@echo off
setlocal

REM Prompt the user for the secret keyword
set /p SECRET_KEYWORD=Enter your secret keyword (you should not share it): 

REM Create .env file and write content
(
    echo APP_ENV=dev
    echo APP_SECRET=%SECRET_KEYWORD%
) > .env

echo .env file created successfully.

endlocal
