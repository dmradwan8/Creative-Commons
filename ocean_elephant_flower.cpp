#include <iostream>
#include <string>

using namespace std;

// This is a program to illustrate the Creative Commons License

// LICENSE

// This program is part of the Creative Commons License (CCL) and is
// distributed under the terms of the CCL. 

// Copyright (c) 2020, [Your Name]. All rights reserved.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License 
// (<https://creativecommons.org/licenses/by-nc-nd/4.0/>).

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License for more details.

// You should have received a copy of the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License 
// along with this program. If not, see <https://creativecommons.org/licenses/by-nc-nd/4.0/>.

// END LICENSE

// This is the main function of the program
int main() {	
	// Printing a welcome message
	cout << "Welcome to the Creative Commons License Demonstration!" << endl;
	
	// Declaring and initializing strings
	string name = "";
	
	// Asking for user name
	cout << "Please enter your name: ";
	cin >> name;
	
	// Printing out the license
	cout << "Hello " << name << "! Here is the Creative Commons License you agreed to:" << endl;
	cout << endl;
	
	cout << "Copyright (c) 2020, [Your Name]. All rights reserved." << endl;
	cout << "This program is free software: you can redistribute it and/or modify " << endl;
	cout << "it under the terms of the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License " << endl;
	cout << " (<https://creativecommons.org/licenses/by-nc-nd/4.0/>)." << endl;
	cout << "This program is distributed in the hope that it will be useful, " << endl;
	cout << "but WITHOUT ANY WARRANTY; without even the implied warranty of " << endl;
	cout << "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the " << endl;
	cout << "Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License for more details." << endl;
	cout << "You should have received a copy of the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License " << endl;
	cout << "along with this program. If not, see <https://creativecommons.org/licenses/by-nc-nd/4.0/>." << endl;
	
	return 0;
}