@echo off
call _internal\setenv.bat

%PYTHON_EXECUTABLE% %OPENDEEPFACESWAP_ROOT%\main.py train ^
    --training-data-src-dir %WORKSPACE%\data_src\aligned ^
    --training-data-dst-dir %WORKSPACE%\data_dst\aligned ^
    --model-dir %WORKSPACE%\model ^
    --model MIAEF128

pause