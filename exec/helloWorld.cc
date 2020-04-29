#include <pippo.hh>
#include <iostream>
#include <printer.hh>	//part of the Cprinter library

using std::cout; using std::endl;

extern void randomFunction();

int main(){
	cout << "Hello new world :D" << endl;
	randomFunction();

	Pippo p = Pippo(42);
	p.quo();

	pluto();

	vector<int> v;
	v.push_back(5);
	v.push_back(15);
	v.push_back(25);
	cout << "v: " << v << endl;

	return(0);
}