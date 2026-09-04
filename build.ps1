
$ErrorActionPreference="Stop"
Write-Host "=== LipikaFusion PRO v4.0 INTELLIGENT - ENTERPRISE BUILD ===" -ForegroundColor Cyan
mkdir artifacts/publish/win-x64 -Force | Out-Null
mkdir artifacts/installer -Force | Out-Null
dotnet restore
dotnet build -c Release
dotnet publish src/LipikaFusion.App/LipikaFusion.App.csproj -c Release -r win-x64 --self-contained true -o artifacts/publish/win-x64
try { iscc installer/LipikaFusion.iss; Write-Host "DONE v4.0 INTELLIGENT - Setup EXE ready" -ForegroundColor Green } catch { Write-Host "Publish ready - Install Inno Setup" -ForegroundColor Yellow }
