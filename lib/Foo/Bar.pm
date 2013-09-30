package Foo::Bar;
use 5.008005;
use strict;
use warnings;
use XSLoader;

our $VERSION = "0.01";

XSLoader::load __PACKAGE__, $VERSION;

1;
__END__

=encoding utf-8

=head1 NAME

Foo::Bar - It's new $module

=head1 SYNOPSIS

    use Foo::Bar;

=head1 DESCRIPTION

Foo::Bar is ...

=head1 LICENSE

Copyright (C) Daisuke Murase.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Daisuke Murase E<lt>typester@cpan.orgE<gt>

=cut

