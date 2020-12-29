cd $1
echo "Updating $1"
$vis project clean
$vis project pack
$vis project update
$vis project clean
cd ..
