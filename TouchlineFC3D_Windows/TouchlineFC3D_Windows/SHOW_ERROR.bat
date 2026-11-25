@echo off
setlocal EnableExtensions DisableDelayedExpansion
set "TLFC_LOG=%LOCALAPPDATA%\TouchlineFC3D\startup.log"
if not exist "%TLFC_LOG%" goto no_log
notepad "%TLFC_LOG%"
exit /b 0
:no_log
echo No startup log was found. Keep the exact message from the START_GAME window.
pause
exit /b 1
