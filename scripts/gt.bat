 @echo off
set searchdir=%HOME%

if "%1" == "-p" goto open_programs
if "%1" == "-t" goto open_tasks
if "%1" == "-tmp" goto open_tmp
if "%1" == "" goto next_arg

FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --query=%1 --walker=dir --walker-root=%searchdir% --preview="tree {} /A /F"`) DO (
  SET var=%%F
)
cd %var%
goto end

:next_arg
  FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --walker=dir --walker-root=%searchdir% --preview="tree {} /A /F"`) DO (
    SET var=%%F
  )
  cd %var%
  goto end

:next_arg
  FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --walker=dir --walker-root=%searchdir% --preview="tree {} /A /F"`) DO (
    SET var=%%F
  )
  cd %var%
  goto end

:open_programs
  set searchdir="%HOME%\Projects"
  goto next_arg

:open_tasks
  set searchdir="%HOME%\Tasks"
  goto next_arg

:open_tmp
  set searchdir="%HOME%\tmp"
  goto next_arg

:end
@echo on
