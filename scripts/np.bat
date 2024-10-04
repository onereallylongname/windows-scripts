 @echo off
set searchdir=%HOME%
set fzfquery=""

if "%1" == "." goto open_same_dir
if "%1" == "-p" goto open_programs
if "%1" == "-t" goto open_tasks
if "%1" == "-tmp" goto open_tmp
if "%1" NEQ "" goto set_quey_1

:next_arg
  if %fzfquery% NEQ "" (
    FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --query=%fzfquery% --walker=dir --walker-root=%searchdir% --preview="tree {} /A /F"`) DO (
      wt -w 0 nt -d %%F
    )
  ) else (
    FOR /F "tokens=* USEBACKQ" %%F IN (`fzf --walker=dir --walker-root=%searchdir% --preview="tree {} /A /F"`) DO (
      wt -w 0 nt -d %%F
    )
  )
  goto end

:open_programs
  set searchdir="%HOME%\Projects"
  if "%2" NEQ "" set fzfquery="%2"
  goto next_arg

:open_tasks
  set searchdir="%HOME%\Tasks"
  if "%2" NEQ "" set fzfquery="%2"
  goto next_arg

:open_tmp
  set searchdir="%HOME%\tmp"
  if "%2" NEQ "" set fzfquery="%2"
  goto next_arg

:set_quey_1
  set fzfquery="%1"
  goto next_arg

:open_same_dir
  wt -w 0 nt -d %CD%

:end
@echo on
