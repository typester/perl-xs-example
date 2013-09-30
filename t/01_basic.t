use strict;
use Test::More;

use Foo::Bar;

my $foo = Foo::Bar->new('foo');

isa_ok $foo, 'Foo::Bar';
is $foo->name, 'foo';

my $bar = Foo::Bar->new('bar');
isa_ok $bar, 'Foo::Bar';
is $bar->name, 'bar';

done_testing;

