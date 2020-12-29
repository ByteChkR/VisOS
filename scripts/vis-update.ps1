cd $args[0]
echo "Updating $args"
vis project clean
vis project pack
vis project update
vis project clean
cd ..
