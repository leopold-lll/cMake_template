@ECHO OFF

::batch comments :D
::remove the old build dir (is it useless???)
::rmdir /s buildWin

:: create the new dir
mkdir buildWin 
cd buildWin 


::Create the Compiler instructions
cmake ../


::Compile for both debug and release version of VisualStudio
cmake --build . --config Debug
::eventually only one target could be installed with:
::cmake --build . --config Debug --target name

cd..
echo Executable:
echo.

::Run the executable
.\run.cmd

