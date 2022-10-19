#include <iostream>
#include "calculator.h"
using namespace std;

int main(){
	auto calculator = new Calculator();
	cout << "Calculator add " << calculator->Add(2.5, 1.5) <<
	endl << "Calculator sub " << calculator->Sub(2.5, 1.5) << endl;
	return 0;
}
