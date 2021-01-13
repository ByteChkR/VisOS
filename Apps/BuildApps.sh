cd VisOS.BaseCommands
$vis project publish $UPLOAD_REPO
$vis project restore $DOWNLOAD_REPO

$vis build -cli:configs default.build.args

cd ../VisOS.UnitTests
$vis project publish $UPLOAD_REPO
$vis project restore $DOWNLOAD_REPO

$vis build -cli:configs default.build.args

cd ../VisOS.HFSCommands
$vis project publish $UPLOAD_REPO
$vis project restore $DOWNLOAD_REPO

$vis build -cli:configs default.build.args

cd ../VisOS.Benchmarks
$vis project publish $UPLOAD_REPO
$vis project restore $DOWNLOAD_REPO

$vis build -cli:configs default.build.args

cd ..
