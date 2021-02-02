$ConsoleInstall = "$(Get-Location)\scripts"
$UninstallScript = "$ConsoleInstall\vis-sdk-uninstall.ps1"
powershell $UninstallScript
echo "------------- Installing VisSDK -------------"
mkdir vis-sdk >$null 2>&1

echo "------------- Cloning Source Repo -------------"
git clone https://github.com/ByteChkR/viscpu vis-sdk
cd vis-sdk\src

echo "------------- Building Console -------------"
dotnet build -c Release >$null 2>&1

echo "------------- Setting up SDK Session Script -------------"
$ConsoleRoot = Get-Location
$ConsoleRoot = [System.IO.Path]::Combine($ConsoleRoot, "VisCPU.Console/bin/Release/net5.0")
$ConsoleRoot = [System.IO.Path]::GetFullPath($ConsoleRoot)

Add-Content -Path $ConsoleInstall\vis-console.ps1 -Value 'invoke-expression' -NoNewline
Add-Content -Path $ConsoleInstall\vis-console.ps1 -Value " 'cmd /c call powershell -NoExit -Command {" -NoNewline

Add-Content -Path $ConsoleInstall\vis-console.ps1 -Value "$ConsoleInstall\vis-make.ps1" -NoNewline

Add-Content -Path $ConsoleInstall\vis-console.ps1 -Value '}' -NoNewline
Add-Content -Path $ConsoleInstall\vis-console.ps1 -Value "'" -NoNewline

Add-Content -Path $ConsoleInstall\vis-make.ps1 -Value '$env:Path += "' -NoNewline

Add-Content -Path $ConsoleInstall\vis-make.ps1 -Value ";$ConsoleRoot" -NoNewline

Add-Content -Path $ConsoleInstall\vis-make.ps1 -Value '"' -NoNewline


echo "Installation Completed."
echo "Exiting in 2 Seconds."

cd $ConsoleInstall\..

sleep 2