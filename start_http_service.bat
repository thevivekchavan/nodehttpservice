@echo off
title Node HTTP Service
setlocal EnableDelayedExpansion

REM Check if node is installed
for /f "delims=" %%i in ('node -v') do set output=%%i

IF "!output!" EQU "" (
    echo Node not installed
    echo Please Install Nodejs or if already installed set node environment in system variables
) else (
    IF exist node_modules (start browse.url && node node_http_server.js) ELSE (echo Downloading node modules... && npm install && cls && title Node HTTP Service && start browse.url && node node_http_server.js )
)

Pause