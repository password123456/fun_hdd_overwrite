@echo off
setLocal EnableDelayedExpansion
set source="d:\tasks"
set target="d:\"

:start

for /f "tokens=*" %%a in ('dir %source%\*.* /b /s') do (
set B=%%a
set C=!B:\=_!
set D=!C:~10,88!
copy /y "%%a" %target%\%random%."!D!"
)

goto end

:end
goto start

