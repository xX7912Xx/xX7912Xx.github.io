@echo off
echo DotCS_website - Uploading files to Github.
git config --global core.autocrlf false
set /p branch=Please enter your branch name: 
set /p commit=Please enter your commit info: 
echo Loading files.
git update-index --add --chmod=+x index.html
git add .
echo Setting commit.
git commit -m "%commit%"
echo Setting branch.
git branch -M "%branch%"
echo Pushing.
git push -f -u origin "%branch%"
echo Finished.
pause