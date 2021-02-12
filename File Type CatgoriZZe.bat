@echo off
echo.
echo.
title .::"   File Type CatgoriZZe |_| Mercads.ir   "::.
:menu
cls
color 0a
echo.
echo.
echo.
echo 	      .::#------------------------------------#::.
echo 	     .:::#        File Type Categorize        #:::.
echo 	    .::::#------------------------------------#::::.
echo.
echo.
echo 		WellCome %userName% ~!!
echo.
echo __________________________________________
echo.
echo 		//  1- Start Process
echo 		//  2- About Programmer
echo 		//  3- Exit Exploit
echo.
echo.
set /p "FtypeC=>>>  "
if %ftypeC%==1 goto usefunc
if %ftypeC%==2 goto about
if %ftypeC%==3 goto exito
echo.
echo.
echo 		Wrong Select!!!!
pause > nul
cls
goto menu

:exito
cls
msg * Good Bye %userName% !!
exit

:about
cls
color 03
echo 			#-----------------------------#
echo 			#                             #
echo 			#       About Programmer      #
echo 			#                             #
echo 			#-----------------------------#
echo.
echo.
echo.
echo This App Coded By Mer$ad HiddeN
echo.
echo 	@Roiter
echo.
echo.
echo.
echo 		Https://T.me/Roiter
echo.
echo.
echo For More Apps Goto programmer's PV in Telegram!
echo.
echo.
echo 		//  1- Contact Programmer(PV)
echo 		//  2- menu
echo 		//  3- exit
echo.
echo.
set/p "chos=>>>  "
if %chos%==1 goto bvc
if %chos%==2 goto menu
if %chos%==3 goto exito
echo Wrong Select!!!!
pause > nul
cls
goto about

:bvc
start Https://T.me/Roiter
goto about
:usefunc
Rem For each file in your folder
for %%a in (".\*") do (
Rem check if the file has an extension and if it is not our script
if "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
Rem check if extension folder exists, if not it is created
if not exist "%%~xa" mkdir "%%~xa"
Rem Move the file to directory
move "%%a" "%%~dpa%%~xa\"
))
cls
goto complete

:complete
cls
msg * "Process Completed!!"