if [ -d "vis-sdk" ]; then
	echo "------------- Removing Previous Installation -------------"
	rm -rf vis-sdk
fi

if [ -f "scripts/vis-make.sh" ]; then
    echo "------------- Removing Console Session Script -------------"
    rm scripts/vis-make.sh
fi
