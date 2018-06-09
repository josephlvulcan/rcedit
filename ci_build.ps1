Write-Host ">>> ci_build.ps1 started"
Get-Date -Format g 
$ErrorActionPreference = "Stop"
Write-Host ">>> install chocolatey"
Get-Date -Format g 
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host ">>> install visualstudio2015community"
Get-Date -Format g 
choco install visualstudio2015community -y
Write-Host ">>> build rcedit"
Get-Date -Format g 
& "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" .\rcedit.sln  /Build | Out-Null
Write-Host ">>> build done"
Get-Date -Format g 
