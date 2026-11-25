@echo off
setlocal EnableExtensions DisableDelayedExpansion
pushd "%~dp0" >nul 2>&1
if errorlevel 1 goto no_folder
set "PYTHONUTF8=1"
echo Touchline FC 3D
if not exist "assets\Korean.ttf" goto incomplete
if not exist "TouchlineFC3D_Debug.exe" goto incomplete
if not exist "python312.dll" goto incomplete
if not exist "panda3d.core.pyd" goto incomplete
".\TouchlineFC3D_Debug.exe" %*
set "TLFC_RESULT=%ERRORLEVEL%"
if "%TLFC_RESULT%"=="0" goto done
echo.
echo Game exited with code %TLFC_RESULT%.
echo If the error mentions UTF-8 or a file path, extract all files to a simple path.
echo Example: C:\Games\TouchlineFC3D
echo Run SHOW_ERROR.bat to open the startup log.
pause
goto done
:incomplete
echo Game files are missing. Extract the complete Windows ZIP to a new folder.
set "TLFC_RESULT=1"
pause
:done
popd
exit /b %TLFC_RESULT%
:no_folder
echo Cannot open the game folder. Extract the Windows ZIP to a local folder.
pause
exit /b 1
