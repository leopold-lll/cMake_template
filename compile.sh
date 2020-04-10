#!/bin/bash

if [[ -d buildLinux ]] 
then
	echo ""
	echo "The buildLinux is not removed because it contain the submodule compiled."
	echo ""
	#rm -rf buildLinux
fi

mkdir buildLinux 
cd buildLinux 
cmake ../
make

cd ..
echo "Executable:"
echo ""
./run.sh

