#!/usr/bin/perl
# strings.pl
#use strict; use warnings;

#string operators
my $s1 = "Hello";
my $s2 = "World\n";
my $s3 = $s1 . " " . $s2;
print $s3;

#string comparision operators
if    ($s1 eq $s2) {print "same string\n"}
elsif ($s1 gt $s2) {print "$s1 is greater than $s2\n"}
elsif ($s1 lt $s2) {print "$s1 is less than $s2\n"}

#matching operators
my $sequence = "AACTAGCGGAATTCCGACCGT";
if ($sequence =~ m/GAATTC/) {print "EcoRI site found\n"}
else {print "no EcoRI site found\n"}
$sequence =~ s/GAATTC/gaattc/;
print "$sequence\n";
$sequence =~ s/A/adenine/;
print "$sequence\n";
$sequence =~ s/C//;
print "$sequence\n";
my $protein = "MVGGKKKTKICDKVSHEEDRISQLPEPLISEILFHLSTKDLWQSVPGLD";
print "Protein contains proline\n" if ($protein =~ m/p/i);

#transliteration operator
my $sequence = "AACTAGCGGAATTCCGACCGT";
my $g_count = ($sequence =~ tr/G/G/);
print "The letter G occurs $g_count times in $sequence\n";
