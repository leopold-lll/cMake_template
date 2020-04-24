#!/bin/bash

if [[ -d buildLinux ]] 
then
	echo ""
	echo "The buildLinux folder is not removed because it contain also the submodule compiled."
	echo ""
	#rm -rf buildLinux
fi

cd build
mkdir buildLinux 
cd buildLinux 
cmake ../../
make

cd .. && cd ..

