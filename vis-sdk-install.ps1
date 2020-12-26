if (Test-Path vis-sdk) {
	Write-Host ------------- Removing Previous Installation -------------
	Remove-Item -Recurse -Force vis-sdk
}

if (Test-Path vis-console-session.ps1) {
	Write-Host ------------- Removing Console Session Script -------------
	Remove-Item vis-console-session.ps1
}

$ConsoleInstall = Get-Location
Write-Host ------------- Installing VisSDK -------------
mkdir vis-sdk >$null 2>&1

Write-Host ------------- Cloning Source Repo -------------
git clone https://github.com/ByteChkR/viscpu vis-sdk
cd vis-sdk\VisCPU.Console

Write-Host ------------- Building Console -------------
dotnet publish -c Release >$null 2>&1

Write-Host ------------- Setting up SDK Session Script -------------
$ConsoleRoot = Get-Location 
$ConsoleRoot = [System.IO.Path]::Combine($ConsoleRoot, "bin/Release/net5.0/publish")
$ConsoleRoot = [System.IO.Path]::GetFullPath($ConsoleRoot)

Add-Content -Path $ConsoleInstall\vis-console-session.ps1 -Value 'invoke-expression' -NoNewline
Add-Content -Path $ConsoleInstall\vis-console-session.ps1 -Value " 'cmd /c call powershell -NoExit -Command {" -NoNewline

Add-Content -Path $ConsoleInstall\vis-console-session.ps1 -Value '$env:Path += "' -NoNewline

Add-Content -Path $ConsoleInstall\vis-console-session.ps1 -Value ";$ConsoleRoot" -NoNewline

Add-Content -Path $ConsoleInstall\vis-console-session.ps1 -Value '"}' -NoNewline
Add-Content -Path $ConsoleInstall\vis-console-session.ps1 -Value "'" -NoNewline

Add-Content -Path $ConsoleInstall\make-console-session.ps1 -Value '$env:Path += "' -NoNewline

Add-Content -Path $ConsoleInstall\make-console-session.ps1 -Value ";$ConsoleRoot" -NoNewline

Add-Content -Path $ConsoleInstall\make-console-session.ps1 -Value '"' -NoNewline


Write-Host Installation Completed.
Write-Host Exiting in 5 Seconds.

cd $ConsoleInstall

sleep 5