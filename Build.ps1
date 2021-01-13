.\scripts\vis-make.ps1

$UPLOAD_REPO = 'local'
$DOWNLOAD_REPO = 'local'

cd VisOS.Driver
vis project publish $UPLOAD_REPO

cd ..\BootLoader
vis project publish $UPLOAD_REPO
vis project restore $DOWNLOAD_REPO
vis build -cli:configs default.build.args

cd ..\VisOS
vis project publish $UPLOAD_REPO
vis project restore $DOWNLOAD_REPO
vis build -cli:configs default.build.args
cd ..

cd Apps
.\BuildApps.ps1
cd ..