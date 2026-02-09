# Restart Backend Server Script
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Restarting Backend Server with Snacks Feature" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Cyan

# Stop all node processes
Write-Host "`nStopping existing Node.js processes..." -ForegroundColor Yellow
Get-Process node -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
Start-Sleep -Seconds 2

# Start backend
Write-Host "Starting backend server..." -ForegroundColor Green
cd backend
npm start
