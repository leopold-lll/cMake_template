# Template of Cmake, openCV and Docker
This is a simple basic template for a CMake application running both on Linux and Windows.
It contains the basic elements such as:
- creation of static libraries
- importing submodules from other GitHub public repositories (in previous commit)
- include external library (i.e. openCv)
- work with the docker platform to easily move the code across different OS

Feel free to use it if you need it.

## [old] Installation for submodules
According to the [git documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to install this repository is sufficiet to execute:
```sh
$ git clone link --recurse-submodules
$ cd cMake_template
$ ./compile.sh
```
or:
```sh
$ git clone link
$ cd cMake_template
$ git submodule update --init --recursive
$ ./compile.sh
```
