Several solutions exist to maintain insertion order in Perl:

1. **Using an Array of Arrays:** Store data as an array of arrays, where each inner array represents a key-value pair.

```perl
my @ordered_hash = (
    ['a', 1],
    ['b', 2],
    ['c', 3]
);

foreach my $pair (@ordered_hash) {
    print "Key: $pair->[0], Value: $pair->[1]\n
";
}
```

2. **Using Tie::Hash::Ordered:**  This module provides an ordered hash implementation.

```perl
use Tie::Hash::Ordered;  #Needs to be installed using cpanm Tie::Hash::Ordered

tie my %ordered_hash, 'Tie::Hash::Ordered';

%ordered_hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

foreach my $key (keys %ordered_hash) {
    print "Key: $key, Value: $ordered_hash{$key}\n";
}
```

3. **Using newer Perl versions (5.10+):**  Perl 5.10 and later versions guarantee insertion order for hashes.