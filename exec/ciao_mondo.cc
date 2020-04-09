#include <pippo.hh>
#include <iostream>

using std::cout; using std::endl;

extern void randomFunction();

int main(){
	cout << "Ciao nuovo mondo :D" << endl;
	randomFunction();

	Pippo p = Pippo(42);
	p.quo();

	return(0);
}