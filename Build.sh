. ./scripts/vis-make.sh

UPLOAD_REPO="local"
DOWNLOAD_REPO="local"

cd VisOS.Driver
$vis project make

cd ../BootLoader
$vis project make

cd ../VisOS
$vis project make
cd ..

cd Apps
. ./BuildApps.sh
cd ..