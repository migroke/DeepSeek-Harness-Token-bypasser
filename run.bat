@echo off
chcp 65001 >nul
setlocal
title launcher

:menu
cls
echo.
echo ーーーーーーーーーーーーーーーーーーーー
echo ーーーーーーーーーーーーーーーーーーーー
echo ーーーーーーーーートまーーーーーーーーー
echo ーーーーーーーーーに道ーーーーーーーーー
echo ーーーーーーーードに道歌ーーーーーーーー
echo ーーーーーーーーのに道龍ーーーーーーーー
echo ーーーーーーード夏に道龍歌ーーーーーーー
echo ーーーーーーー川警に道龍龍ーーーーーーー
echo ーーーーーード道警に道龍龍歌ーーーーーー
echo ーーーーーー川龍警に道龍龍龍ーーーーーー
echo ーーーーード道龍警に道龍龍龍歌ーーーーー
echo ーーーーー川龍龍警に道龍龍龍龍ーーーーー
echo ーーーード道龍龍警に道龍龍龍龍歌ーーーー
echo ーーーー川龍龍龍警に道龍龍龍龍龍ーーーー
echo ーーード道龍龍龍警に道龍龍龍龍龍歌ーーー
echo ーーー川龍龍龍龍警に道龍龍龍龍龍龍ーーー
echo ーード道龍龍龍龍警に道龍龍龍龍龍龍歌ーー
echo ーーの三三三三三三に道龍龍龍龍龍龍龍ーー
echo ーーーーーーーーーーーーーーーーーーーー
echo ーーーーーーーーーーーーーーーーーーーー
echo.
echo  ==========================================
echo  repo: https://github.com/migroke/DeepSeek-Harness-Token-bypasser/
echo  ==========================================
echo.
echo   [1] Standard test mode
echo   [2] Emulation test mode
echo   [3] Cleanup test artifacts
echo   [0] Exit
echo.
set /p choice=Select an option: 

if "%choice%"=="1" goto standard
if "%choice%"=="2" goto emulation
if "%choice%"=="3" goto cleanup
if "%choice%"=="0" goto end
goto invalid

:standard
echo.
echo [*] Starting standard test mode...
mock-bp.exe --standard
goto done

:emulation
echo.
echo [*] Starting emulation test mode...
mock-bp.exe --emulation
goto done

:cleanup
echo.
echo [*] Cleaning up local test artifacts...
mock-bp.exe --cleanup
goto done

:invalid
echo.
echo [!] Invalid option. Please choose 1, 2, 3, or 0.
pause
goto menu

:done
echo.
echo [*] Command finished.
pause
goto menu

:end
echo.
echo Exiting.
endlocal
exit /b 0
