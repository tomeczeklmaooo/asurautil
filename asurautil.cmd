@echo off
set version=0.1
:f_menu
cls
echo ---------------------------------------
echo   Asura Windows Utility [Version %version%]
echo ---------------------------------------
echo.
echo Select a tool:
echo [1] Internet Cookie Cleaner
echo [2] Temporary Internet Files Cleaner
echo [3] Temporary Files Cleaner            [WIP]
echo [4] Disk Defragmentation (HDD only)    [WIP]
echo [5] User Account Creation              [WIP]
echo [6] Software Installer                 [WIP]
echo [7] Windows Debloater                  [WIP]
echo [8] Windows System Information         [WIP]
echo [9] About
echo [0] Exit
set /p operation=Choice: 
if %operation%==1 goto f_rmcookies
if %operation%==2 goto f_rminternetfiles
if %operation%==3 goto f_rmtempfiles
if %operation%==4 goto f_diskdefrag
if %operation%==5 goto f_useraccountcreation
if %operation%==6 goto f_softwareinstaller
if %operation%==7 goto f_winntdebloat
if %operation%==8 goto f_winnntsysinfo
if %operation%==9 goto f_about
if %operation%==0 goto f_exit
goto f_error

:f_rmcookies
echo.
echo Removing Internet Cookies...
del /f /q "%userprofile%\Cookies\*.*"
echo Internet Cookies removed successfully.
ping localhost -n 3 >nul
goto f_menu

:f_rminternetfiles
echo.
echo Removing Temporary Internet Files...
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.*"
echo Temporary Internet Files removed successfully.
ping localhost -n 3 >nul
goto f_menu

:f_rmtempfiles
echo.
echo Coming soon...
ping localhost -n 3 >nul
goto f_menu

:f_diskdefrag
echo.
echo Coming soon...
ping localhost -n 3 >nul
goto f_menu

:f_useraccountcreation
echo.
echo Coming soon...
ping localhost -n 3 >nul
goto f_menu

:f_softwareinstaller
echo.
echo Coming soon...
ping localhost -n 3 >nul
goto f_menu

:f_winntdebloat
echo.
echo Coming soon...
ping localhost -n 3 >nul
goto f_menu

:f_winnntsysinfo
echo.
echo Coming soon...
ping localhost -n 3 >nul
goto f_menu

:f_about
cls
echo Asura Windows Utility [Version %version%]
echo Developed by tomeczeklmaooo
echo.
echo Repository: https://github.com/tomeczeklmaooo/asurautil
echo Licensed under GNU GPLv3
echo.
echo Press any key to return to the menu...
pause > nul
goto f_menu

:f_exit
echo Exiting asurautil...
cls
exit /b

:f_error
echo.
echo Command not recognized.
ping localhost -n 3 >nul
goto f_menu