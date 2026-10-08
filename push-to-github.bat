@echo off
chcp 65001 >nul
setlocal

echo === Push animal-match3 to GitHub ===
echo Step 0: create an EMPTY public repo on https://github.com/new first (no README, no .gitignore)
echo.

set /p GH_USER=Your GitHub username: 
if "%GH_USER%"=="" echo Username required, abort. & pause & exit /b 1

set /p REPO=Repository name (Enter = animal-match3): 
if "%REPO%"=="" set REPO=animal-match3

set /p GIT_NAME=Your git display name: 
set /p GIT_EMAIL=Your GitHub email: 

git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"

git add -A
git commit -m "feat: forest match-3 animals game" 2>nul
if errorlevel 1 echo (no new changes to commit)

git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/%GH_USER%/%REPO%.git
git push -u origin main

echo.
echo === Done ===
echo Repo: https://github.com/%GH_USER%/%REPO%
echo Next: open https://vercel.com/new and import this repo
pause
