#!/usr/bin/perl

@ints = (10,20,30,40,50, 60, 70);
print "$ints[-10]\n";
print "$ints[10]\n";
print "$ints[1]\n";
print "$ints[2]\n";

print scalar "@ints\n";	# Prints the elements.
print "##################\n";
@ints[20] = 200;
print "##################\n";
print scalar "@ints\n";	# Prints the elements after an insertion of an element out of bounds.
# In between, elements are displayed as spaces
print "##################\n";

@slice = @ints[0,1,2,6];
print "##################\n";

print "@slice \n";

print "##################\n";

@myMixArray = (1, 2, 3, 4, 5, 6, "word", "yes", "this is perl yeah", 5, 10, 2);
print "##################\n";

print "@myMixArray \n";

print "##################\n";

@jagged = ([0, 1], [3], [5, 6, 7, 8], [1]);

print "$raggedarray[2][2] \n"; #Prints 7.
