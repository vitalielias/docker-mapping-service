@echo off
SET "composefile=%~dp0docker-compose.yml"

echo Running Docker Compose services... this may take several minutes, especially the first time.
docker-compose -f "%composefile%" up -d