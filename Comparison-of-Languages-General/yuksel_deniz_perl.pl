#!/usr/bin/perl
use strict;
use warnings;

my @myArray = (52,23,4,74,"Deniz",892,755,6,7, 50, 23, 55);

for( my $i = 0; $i < 10; $i++){
	print "Current value: $i \n";
	$i = $i + 2;	
##The control variable can be manipulated inside the body of the loop. This affects the number of iterations.

#print "The value of i is " . "$i ";
}
print "\n";
#print "The value of i is " . "$i ";
# This print statement generated errors because the variable $i is not defined. This shows unlike PHP or Python, in Perl, the value of the loop counter variable is deallocated whence the loop terminates. The scope of the variable is only in the declared block.

my $size = scalar @myArray;
print "$size";

for( my $i = 0; $i < $size; $i++){
	print "Current value: $i \n";
	$size = $size - 2;
	# The loop control variable can be manipulated, and thus changes the number of iterations. Therefore, the loop variables are not evaluated only once likewise in Python, but checked for every iteration.
}

my $control = 10.4;
#The for loop accepts double parameters for control and counter variables.
for( my $i = 0.8; $i <= $control; $i = $i + 0.3){
	print "Current value: $i \n";
}

my $word = "PerlFun";
#If the value of the counter variable is a string, the value of the string is printed as the first print-out value, and then other values are printed according to the control variable.
for( my $i = "ThisIsTheZerothPrintOut"; $i < 10; $i++){
	print "Current value: $i \n";
}

$size = scalar @myArray; 
#When an array is assigned to an integer register, the register's value is the size of that array. This is why this statement prints 12 13 14
for( my $i = @myArray; $i < 15; $i++){
	print "$i ";
}
print "\n";

#This little code prints out integers from 0 to 12, both included. The double values are truncated and their integer forms are printed.
foreach my $element ( 0.4..12.5){
	print "$element ";
}
print "\n";

foreach my $element (@myArray){
	print "$element ";
}
print "\n";

#It appears to be no difference between typing foreach and for, for this case...
for my $element (@myArray){
	print "$element ";
}





