cd VisOS.BaseCommands
$vis project make . Release

cd ../VisOS.UnitTests
$vis project make . Release

cd ../VisOS.HFSCommands
$vis project make . Release

cd ../VisOS.Benchmarks
$vis project make . Release

cd ..
