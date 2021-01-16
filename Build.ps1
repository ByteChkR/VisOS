.\scripts\vis-make.ps1

cd VisOS.Driver
vis project make . Publish

cd ..\BootLoader
vis project make . Release

cd ..\VisOS
vis project make . Release
cd ..

cd Apps
.\BuildApps.ps1
cd ..