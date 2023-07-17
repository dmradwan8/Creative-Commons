#!/usr/bin/perl

#This is the Creative Commons License

#All code within this file is licensed as Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0).

#------------------------------------------
# File: creativeCommonsLicense.pl
# Author: Joe Smith
# Created: Jan 1, 2018
# Last Modified: Jan 2, 2018
#-------------------------------------------

# Initialize
use strict;
use warnings;

#Declare Variables
my $input;
my $output;

#Main Code
print "\n------- Welcome to Creative Commons License -------\n";

#User input
print "\nPlease enter your name: ";
$input = <>;
chomp($input);

#Print license
print "\nThank you for choosing Creative Commons.  The following is the license agreement: \n";
print "\n Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0) \n";

#Prompt user to accept or reject
print "\nDo you accept the license agreement? (Y/N) ";
$input = <>;
chomp($input);

#If the user accepts
if ($input eq "Y") {
	print "\nThank you for accepting the license agreement.  Your code is now Creative Commons licensed. \n";
	$output = "Success";

#If the user denies
} elsif ($input eq "N") {
	print "\nThe license agreement has not been accepted.  Your code is not Creative Commons licensed. \n";
	$output = "Failed";
}

#Final Output
print "\n The license agreement has been: $output \n\n";