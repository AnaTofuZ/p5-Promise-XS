#!/usr/bin/env perl

use strict;
use warnings;

use Promise::XS;

$Promise::XS::DETECT_MEMORY_LEAKS = 1;

open STDERR, ">>&=", *STDOUT;

my $deferred = Promise::XS::deferred();

my $p = $deferred->promise();

undef $deferred;

my $ar = [ $p ];
push @$ar, $ar;
