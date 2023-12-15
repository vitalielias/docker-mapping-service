REM This batch files eliminates the need for the user to run the docker-compose command in the terminal.
REM In essence, just opening this directory in the terminal (Powershell) and running docker-compose -f docker-compose.yml up -d will do the same thing.
REM This may be useful if there are security features preventing you from running unknown .bat files (as there should be).
@echo off

echo Running Docker Compose services... this may take several minutes, especially the first time.
docker-compose up
