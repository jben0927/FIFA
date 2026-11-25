@echo off
call "%~dp0START_GAME.bat" --safe-mode --quality LOW
exit /b %ERRORLEVEL%
