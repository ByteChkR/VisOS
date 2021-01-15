.\scripts\vis-make.ps1

cd VisOS.Driver
vis project make

cd ..\BootLoader
vis project make

cd ..\VisOS
vis project make
cd ..

cd Apps
.\BuildApps.ps1
cd ..