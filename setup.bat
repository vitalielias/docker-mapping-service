@echo off
cd /d "%~dp0"
echo Starting the Docker containers...
docker-compose up -d
echo Containers are starting in the background.
echo Opening the web browser...
start http://localhost
echo You can now access the application in your web browser.
pause

