package String::DiffLine;

use strict;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);

@EXPORT = qw();

@EXPORT_OK=qw(diffline);

$VERSION = '0.02';

bootstrap String::DiffLine $VERSION;

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__

=head1 NAME

String::DiffLine - find the character,line, and line position of the first difference

=head1 SYNOPSIS

  use String::DiffLine qw(diffline);
  ($char,$line,$lpos)=diffline("abc","abx");

=head1 DESCRIPTION

=item diffline($str1,$str2)

Returns a three-item list identifying the location of the first
difference between the two strings: the character position (indexed
from 0), the line number (indexed from 1), and the position in the
line (indexed from 0). $/ is used as the line separator. 

If the strings are identical, the first element of the returned list
is zero, the second element is the number of line separators plus one,
and the last element is the number of characters following the last
line separator.

=head1 AUTHOR

Andrew Allen <andrew_d_allen@hotmail.com>

=head1 SEE ALSO

perl(1).

=cut
