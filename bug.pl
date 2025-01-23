my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This code will only print keys 'a', 'b', and 'c', not necessarily in that order.
# Perl hashes are not ordered before Perl 5.10.
#If you need to maintain the order of insertion, consider using an array of arrays or a more modern data structure.