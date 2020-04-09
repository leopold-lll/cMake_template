#!/bin/bash

if [[ -d buildLinux ]] 
then
	echo ""
	echo "Is it efficient to remove the build folder each time???"
	echo ""
	#rm -rf buildLinux
else
	mkdir buildLinux 
fi

cd buildLinux 
cmake ../
make

cd ..
echo "Executable:"
echo ""
./run.sh

