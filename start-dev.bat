@echo off
title grok2api Quick Starter
echo ===================================================
echo             grok2api Quick Starter
echo ===================================================

echo [1/2] Starting Go Backend on port 9222...
start "grok2api-backend" cmd /k "cd /d "%~dp0backend" && go run ./cmd/grok2api"

echo [2/2] Starting React Frontend on port 5173...
start "grok2api-frontend" cmd /k "cd /d "%~dp0frontend" && set VITE_DEV_API_TARGET=http://127.0.0.1:9222&& pnpm dev"

echo ===================================================
echo Both services are starting in separate windows.
echo - Frontend: http://localhost:5173
echo - Backend: http://127.0.0.1:9222
echo ===================================================
pause
