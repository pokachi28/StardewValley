@echo off
echo Starting Git operations...

REM リモートリポジトリを追加
git remote add origin https://github.com/pokachi28/StardewValley.git
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to add remote. It may already exist.
)

REM 変更をステージングエリアに追加
git add .
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to stage changes.
    pause
    exit /b 1
)

REM コミットを作成
git commit -m "新しい変更"
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to commit changes.
    pause
    exit /b 1
)

REM リモートにプッシュ
git push origin main
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to push changes to remote repository.
    pause
    exit /b 1
)

REM リモートリポジトリを削除
git remote remove origin
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to remove remote.
)

echo Git operations completed successfully.
pause
