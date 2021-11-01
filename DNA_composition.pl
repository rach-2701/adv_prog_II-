#!/usr/bin/perl
# dnastats.pl by ___
#use strict; use warnings;

#use of die
die "usage: dnastats.pl <dna sequence>\n" unless @ARGV == 1;
my ($seq) = @ARGV;

my $number_of_arguments = @ARGV;
if($number_of_arguments != 1){
die "usage: dnastats.pl <dna sequence>\n";
}

my ($x, $y, $z) = (1, 2, 3);
print "x=$x y=$y z=$z\n";
($x, $y) = ($y, $x);
print "x=$x y=$y\n";
my ($x, $y, $z) = (1, 2, 3, 4, 5);
print "x=$x y=$y z=$z\n";
my ($a, $b, $c) = (1, 2);
print "c=$c\n";
print length($c), "\n";
print $a + $c, "\n";

#array
my @animals = ('cat', 'dog', 'pig');
print "1st animal in array is: $animals[0]\n";
print "2nd animal in array is: $animals[1]\n";
print "Entire animals array contains: @animals\n";
print "@animals[0]\n"; # bad
@animals = ('cat', 'dog', 'pig'); # needed because @animals was emptied
print "Animal at array position 1.2 is $animals[1.2]\n";
print "Animal at array position 1.7 is $animals[1.7]\n";
print "Animal at array position -1 is $animals[-1]\n";
print "array length = ", scalar(@animals), "\n";

#sorting
my @gene_names = qw(unc-10 cyc-1 act-1 let-7 dyf-2);
my $joined_string = join(", ", @gene_names);
print "$joined_string\n";
my $dna = "aaaaGAATTCttttttGAATTCggggggg";
my $EcoRI = "GAATTC";
my @digest = split($EcoRI, $dna);
print "@digest\n";
my @dna = split("", $dna);
print "@dna\n";
my @list = qw( c b a C B A a b c 3 2 1); # an unsorted list
my @sorted_list = sort @list;
print "default: @sorted_list\n";

#for
for (my $i = 0; $i < 10; $i = $i + 1) {
print "$i\n";
}
for (my $i = 50; $i >= 45; $i--) {print "$i\n"}
for (my $i = 0; $i < 100; $i += 10) {print "$i\n"}
die "usage: sumint.pl <limit>\n" unless @ARGV == 1;
my ($limit) = @ARGV;
my $sum = 0;
for (my $i = 1; $i <= $limit; $i++) {$sum += $i}
print "$sum\n";
die "usage: sumint.pl <limit>\n" unless @ARGV == 1;
my ($limit) = @ARGV;
my $sum = 0;
for (my $i = 1; $i <= $limit; $i++) {$sum += $i}
print "$sum\n";

#foreach
foreach my $protein (@proteins) { ... }
foreach my $car (@cars) { ... }
foreach my $knight_who_say_Ni (@knights_who_say_Ni) { ... }

#Loop control
my $n = 0;
while (1) {
$n++;
redo if $n < 100;
last if $n > 200; # breaks out of while loop
my $prime = 1; # assumed true
for (my $i = 2; $i < $n; $i++) {
if ($n % $i == 0) {
$prime = 0; # now known to be false
last; # breaks out of for loop
         }
 }
print "$n\n" if $prime;
}
