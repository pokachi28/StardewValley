@echo off
echo Starting Git operations...

REM Git remote add
git remote add origin https://github.com/pokachi28/StardewValley.git
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to add remote. It may already exist.
)

REM Git pull
git push origin main
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to pull from remote repository.
    pause
    exit /b 1
)

REM Git remote remove
git remote remove origin
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to remove remote.
)

echo Git operations completed.
pause