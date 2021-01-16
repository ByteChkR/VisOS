.\Build.ps1

cd Apps
.\PublishApps.ps1
cd ..

cd VisOS.Driver
vis project make . Publish

cd ..\BootLoader
vis project make . Publish

cd ..\VisOS
vis project make . Publish
cd ..
