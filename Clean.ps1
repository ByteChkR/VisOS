.\scripts\vis-make.ps1
cd VisOS
vis project clean
cd ..\BootLoader
vis project clean
cd ..\Test
vis project clean
cd ..\VisOS.Driver
vis project clean
cd ..\Apps

.\CleanApps.ps1
cd ..