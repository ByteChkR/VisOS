. ./scripts/vis-make.sh

$UPLOAD_REPO = 'local'
$DOWNLOAD_REPO = 'local'

cd VisOS.Driver
$vis project clean
$vis project pack
$vis project publish $UPLOAD_REPO
$vis project clean

cd ../BootLoader
$vis project clean
$vis project pack
$vis project publish $UPLOAD_REPO
$vis project restore
$vis build -build:i Loader.vhl -build:steps HL-expr bin -build:clean false -assembler:offset.global 0 -linker:export

cd ../VisOS
$vis project clean
$vis project pack
$vis project publish $UPLOAD_REPO
$vis project restore
$vis build -build:i Core.vhl -build:steps HL-expr bin -build:clean false -assembler:offset.global 16384 -linker:export
cd ..

cd Apps
./BuildApps.sh
cd ..