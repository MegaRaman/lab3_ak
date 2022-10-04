#include <iostream>
#include "somelib.h"

int main(int argc, char** argv) {
	Calculator calc;
	std::cout << calc.add(4, 3) << std::endl;
	std::cout << calc.sub(6, 4) << std::endl;
	return 0;
}
