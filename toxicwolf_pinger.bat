:: I take no Responsibility of what you do with this program, use at your own risk

@echo off
mode 45,12
set /a num=%random% %%9
color %num%
title ToxicWolf Pinger - Idle
echo  __                                                  ___       ___  
echo /\ \__                __                            /\_ \    /'___\ 
echo \ \ ,_\   ___   __  _/\_\    ___   __  __  __    ___\//\ \  /\ \__/ 
echo  \ \ \/  / __`\/\ \/'\/\ \  /'___\/\ \/\ \/\ \  / __`\\ \ \ \ \ ,__\
echo   \ \ \_/\ \L\ \/    /\ \ \/\ \__/\ \ \_/ \_/ \/\ \L\ \\_\ \_\ \ \_/
echo    \ \__\ \____//\_/\_\\ \_\ \____\\ \___x___/'\ \____//\____\\ \_\ 
echo     \/__/\/___/ \//\/_/ \/_/\/____/ \/__//__/   \/___/ \/____/ \/_/ 
echo
set /p ip="[41;37m>[40;37m"
:top
PING -n 1 %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto offline
IF NOT ERRORLEVEL 1 goto ping
:ping
::set /a num=%random% %%9
::color %num%
title ToxicWolf Pinger - Ctrl+C Exit - Online
echo [40;37m [41;37m%IP%[40;30m [40;37mis [42;37mpinging[40;30m
ping localhost -n 2 >nul
goto top
:offline
title ToxicWolf Pinger - Ctrl+C Exit - Offline
echo [40;37m [41;33m%IP%[40;31m is offline
ping localhost -n 2 >nul
goto top