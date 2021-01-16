. ./Build.sh

UPLOAD_REPO="local"
DOWNLOAD_REPO="local"

cd Apps
. ./PublishApps.sh
cd ..

cd VisOS.Driver
$vis project make . Publish

cd ../BootLoader
$vis project make . Publish

cd ../VisOS
$vis project make . Publish
cd ..
