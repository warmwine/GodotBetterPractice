@echo off
:main
cls
echo.----------------------------------------------------------- 
echo.Read To Remove these dirty files and directorie
echo.-----------------------------------------------------------
cd %~dp0
cd ..
git clean -nxfd --exclude=".vscode"
cd %~dp0
echo.----------------------------------------------------------- 
set /p choice=Input number to choose:(1.  yes / 2.  no )
echo.-----------------------------------------------------------

if %choice%==1 goto clean
if %choice%==2 goto notclean

:clean
cd %~dp0
cd ..
git clean -xfd --exclude=".vscode"
cd %~dp0
goto end

:notclean
echo User cancel cleaning.

:end
echo.-----------------------------------------------------------
echo Done
echo.-----------------------------------------------------------