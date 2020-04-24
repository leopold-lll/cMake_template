@ECHO OFF

::batch comments :D


:: create the new dir
cd build

::do not remove the old build dir, because it also contain the submodule compiled
::rmdir /s buildWin
mkdir buildWin
cd buildWin


::Create the Compiler instructions
cmake ../../


::Compile for both debug and release version of VisualStudio
cmake --build . --config Debug
::eventually only one target could be installed with:
::cmake --build . --config Debug --target name

cd.. && cd..

