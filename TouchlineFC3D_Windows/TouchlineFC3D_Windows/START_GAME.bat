@echo off
setlocal
chcp 65001 >nul
cd /d "%~dp0"
echo Touchline FC 3D 1.7.0
echo 게임을 여는 중입니다. 이 창을 닫으면 게임도 종료될 수 있습니다.
echo.
if not exist "assets\Korean.ttf" (
    echo 게임 자료가 없습니다. ZIP 파일을 우클릭해 모두 압축 풀기를 먼저 선택하세요.
    pause
    exit /b 1
)
if not exist "TouchlineFC3D_Debug.exe" (
    echo 실행 파일이 없습니다. ZIP 전체를 새 폴더에 다시 압축 해제하세요.
    pause
    exit /b 1
)
"%~dp0TouchlineFC3D_Debug.exe" %*
set "TLFC_RESULT=%ERRORLEVEL%"
if not "%TLFC_RESULT%"=="0" (
    echo.
    echo 실행 오류가 발생했습니다. 위의 마지막 오류 문구를 확인해 주세요.
    echo START_COMPATIBLE.bat를 실행하면 소프트웨어 3D 모드로 엽니다.
    echo SHOW_ERROR.bat를 실행하면 저장된 오류 기록을 엽니다.
    echo 종료 코드: %TLFC_RESULT%
    pause
)
exit /b %TLFC_RESULT%
