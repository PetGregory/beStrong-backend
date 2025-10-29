@echo off
echo ========================================
echo Backend GitHub Upload Script
echo ========================================
echo.

cd /d "%~dp0"

echo Checking git status...
if not exist ".git" (
    echo Initializing git repository...
    git init
)

echo Removing old remote (if exists)...
git remote remove origin 2>nul

echo Adding new remote...
git remote add origin https://github.com/PetGregory/beStrong-backend.git

echo Adding all files...
git add .

echo Committing...
git commit -m "Initial commit - Backend ready for Render deploy"

echo Setting main branch...
git branch -M main

echo.
echo ========================================
echo Ready to push!
echo ========================================
echo.
echo Run this command to push:
echo   git push -u origin main
echo.
echo If it asks for credentials, use your GitHub username and a Personal Access Token.
echo.
pause

