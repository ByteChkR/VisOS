vis=/home/tim/VisCPU/viscpu/VisCPU.Console/bin/Release/net5.0/publish/vis


cd $1
echo Updating $1
$vis project clean
$vis project pack
$vis project update
$vis project clean
cd ..
