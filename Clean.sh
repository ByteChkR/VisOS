. ./scripts/vis-make.sh
cd VisOS
$vis project clean
cd ../BootLoader
$vis project clean
cd ../Test
$vis project clean
cd ../VisOS.Driver
$vis project clean
cd ../Apps

. ./CleanApps.sh
cd ..