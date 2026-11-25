@echo off
setlocal
chcp 65001 >nul
if exist "%LOCALAPPDATA%\TouchlineFC3D\startup.log" (
    notepad "%LOCALAPPDATA%\TouchlineFC3D\startup.log"
    exit /b 0
)
echo 아직 오류 기록이 없습니다. START_GAME.bat를 먼저 실행해 주세요.
pause
