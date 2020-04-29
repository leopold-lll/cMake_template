#include <iostream>
#include <cvUtils.hh>

int main(int argc, char** argv) {
	std::cout << "\nOpenCV exec:\n";
	showImage(argv[1]);
	std::cout << "OpenCV exec: end.\n";
	return(0);
}
