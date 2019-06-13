setlocal enabledelayedexpansion
set FOLDER_PATH=
for %%f in (%FOLDER_PATH%*) do if %%f neq %~nx0 (
    set "filename=%%~nf"
    ren "%%f" "!filename:~18,-21!%%~xf"
)
for %%f in (%FOLDER_PATH%*) do if %%f neq %~nx0 (
    echo [%%~nxf](%%~nxf^) >> output.txt
)
PAUSE