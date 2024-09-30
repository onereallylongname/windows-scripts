 @echo off

FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --preview="bat --color=always {}" `) DO (
  SET var=%%F
)
CALL :setfile %var%
nvim "%var%" -c "cd %filepath%"
goto end

:setfile
set filepath=%~dp1
goto :eof

:end
@echo on
