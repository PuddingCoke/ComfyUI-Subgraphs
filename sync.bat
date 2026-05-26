@echo off
chcp 65001 >nul
set "SRC=C:\Users\zhang\Documents\ComfyUI\user\default\subgraphs"
set "DST=%~dp0"

echo ========================================
echo   ComfyUI Subgraphs Sync
echo ========================================
echo.
echo Source: %SRC%
echo Target: %DST%
echo.

if not exist "%SRC%" (
    echo [ERROR] Source path not found: %SRC%
    pause
    exit /b 1
)

xcopy "%SRC%\*" "%DST%" /E /Y /D
echo.
echo Done!
pause

