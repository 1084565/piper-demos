:: Setting up docker containers for CNA370
:: Execute this file on laptop startup.
:: Execute this file _before_ the session to cache docker images.

@echo off
echo.

echo Demo Setup
echo.

:: We seem to need this for the socket mapping (DinD)
set COMPOSE_CONVERT_WINDOWS_PATHS=1

:: we must pull before, otherwise we will not get any updates
docker-compose pull
docker-compose up -d

echo.

echo Please check that your containers are up and running:
echo 1) Execute "docker ps" in this CLI
echo.
echo 2) Access Jenkins http://localhost:18080

echo.
echo Good luck!
echo.


