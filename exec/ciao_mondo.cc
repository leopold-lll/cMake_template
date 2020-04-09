#include <pippo.hh>
#include <iostream>
// #include <CPrinter>
#include <printer.hh>

using std::cout; using std::endl;

extern void randomFunction();

int main(){
	cout << "Ciao nuovo mondo :D" << endl;
	randomFunction();

	Pippo p = Pippo(42);
	p.quo();

	vector<int> v;
	v.push_back(5);
	v.push_back(15);
	v.push_back(25);
	cout << "v: " << v << endl;

	return(0);
}