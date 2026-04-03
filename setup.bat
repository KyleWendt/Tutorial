start /wait "" Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=1 /S /D=%UserProfile%\Anaconda3

@echo off
:: 1. Define paths
set CONDA_PATH=C:\Users\%USERNAME%\Anaconda3

:: 2. Initialize Conda for this batch session
call %CONDA_PATH%\Scripts\activate.bat %CONDA_PATH%

:: 3. Create the environment (if it doesn't exist)
:: The --yes flag skips the (y/n) confirmation prompt
call conda create -f conda.yaml
