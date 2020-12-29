vis=/home/tim/VisCPU/viscpu/VisCPU.Console/bin/Release/net5.0/publish/vis

echo Updating OS
sh vis_update.sh VisOS.Utility
sh vis_update.sh VisOS.Tests
sh vis_update.sh VisOS.Driver
sh vis_update.sh VisOS.Core
sh vis_update.sh VisOS.Commands
sh vis_update.sh VisOS
sh vis_update.sh Example

cd Example
echo Building OS
$vis project restore
$vis build -build:i RunOS.vhl -build:steps HL-expr bin
echo Running OS
$vis run -run:i RunOS.vbin
$vis project clean