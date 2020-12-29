if (Test-Path vis-sdk) {
	echo "------------- Removing Previous Installation -------------"
	Remove-Item -Recurse -Force vis-sdk
}

if (Test-Path scripts\vis-console.ps1) {
    echo "------------- Removing Console Session Script -------------"
    Remove-Item scripts\vis-console.ps1
}
if (Test-Path scripts\vis-make.ps1) {
    echo "------------- Removing Console Session Script -------------"
    Remove-Item scripts\vis-make.ps1
}