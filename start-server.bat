@echo off
REM Start Apache in the background
taskkill /F /IM httpd.exe
start "" "C:\xampp\apache\bin\httpd.exe"

REM Navigate to your PHP project directory (adjust if needed)
cd /d C:\path\to\your\php\project

REM Start PHP built-in server
start "" php -S localhost:8080 -t public
taskkill /F /IM httpd.exe

exit
