@echo off
title Create React Base
color f

:main
cls
echo Created at 03/Nov/2023 by Sage DW
echo.
echo.
echo.
echo Do you want to create a React Folder Base?
echo.
echo 1) Yes
echo 2) No
echo.
echo.
set /p input=Input: 
if %input% == 1 goto create
if %input% == 2 exit

:create
cls
md assets

:: Goes into `assets`
cd assets
md fonts
md images
md styles

:: Back into root
cd ..

md components

:: Goes into `components`
cd components
md Button
md Header

:: Back into root
cd ..

md hooks
md pages

:: Goes into `pages`
cd pages
md Home

:: Back into root
cd ..

md routes

:: Goes into `routes`
cd routes
echo "" >> index.js

:: Back into root
cd ..

md utils
echo.
echo.
echo.

:: Finishes process
echo Process is finished.
echo Check for any error messages above.
echo.
echo Press any key to exit.
pause > nul
exit