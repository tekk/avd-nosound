@echo off
cls
@echo Run specified AVD with sound input and output disabled.
@echo CC 4.0 2016 Peter Javorsky. mailto:tekk.sk[a]gmail.com
@echo.
if "%1"=="" goto usage
set QEMU_AUDIO_DRV=none
@echo Running AVD "%1" without sound...
@echo.
%ANDROID_HOME%\tools\emulator.exe -avd %1
goto :eof

:usage
@echo.
@echo -----------------------------------
@echo Usage: %0 ^<avd-name^>
@echo -----------------------------------
@echo.
@timeout 3 >0
exit /B 1
