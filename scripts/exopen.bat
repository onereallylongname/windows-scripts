 @echo off
if "%1" == "." goto open_same_dir
if "%1" == "p" goto open_programs
if "%1" == "t" goto open_tasks
if "%1" == "tmp" goto open_tmp

set searchdir=%HOME%

:next_arg
  FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --walker=dir --walker-root=%searchdir% --preview="tree {} /A" `) DO (
    SET var=%%F
  )
  explorer %var%
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

:open_same_dir
  explorer %CD%

:end
@echo on
