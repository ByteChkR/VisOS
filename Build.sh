. ./scripts/vis-make.sh

UPLOAD_REPO="local"
DOWNLOAD_REPO="local"

cd VisOS.Driver
$vis project make . Publish

cd ../BootLoader
$vis project make . Release

cd ../VisOS
$vis project make . Release
cd ..

cd Apps
. ./BuildApps.sh
cd ..