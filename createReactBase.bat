@echo off
title Criar Base React
color f

:main
cls
echo Criado em 03/Nov/2023 por Sage DW
echo.
echo.
echo.
echo Deseja criar uma base para um projeto em React?
echo.
echo 1) Sim
echo 2) Não
echo.
echo.
set /p input=Input: 
if %input% == 1 goto create
if %input% == 2 exit

:create
cls
md assets

:: Entra em `assets`
cd assets
md fonts
md images
md styles

:: Volta ao root
cd ..

md components

:: Entra em `components`
cd components
md Button
md Header

:: Volta ao root
cd ..

md hooks
md pages

:: Entra em `pages`
cd pages
md Home

:: Volta ao root
cd ..

md routes

:: Entra em `routes`
cd routes
echo "" >> index.js

:: Volta ao root
cd ..

md utils
echo.
echo.
echo.

:: Finaliza o processo
echo Processo finalizado.
echo Verifique se há mensagens de erro acima.
echo.
echo Pressione qualquer tecla para finalizar o programa.
pause > nul
exit
