#!/usr/bin/perl 

use warnings;
use strict;
use lib '/home/mobaxterm/documents/perl_lib';
use Data::Dumper;
use Getopt::Long;
# https://perldoc.perl.org/Carp.html
use Carp;
use AutoFactory::ScriptUtils 0.02;

our $VERSION= 0.01;
our %META_DATA= (); # META_DATA
our $HELP= 0;

our $TEST= 0;
my $REQ_ARG= ''; #REQ_ARG 

my $USAGE_MESG= qq[
$0 VERSION=$VERSION
USAGE: $0 [-h|--help] [--test (d: TEST=0)] --req_arg REQ_ARG 
];
my @USAGE= (
	'req_arg' => \$REQ_ARG ,
	'test' => \$TEST ,

	'help' => \$HELP
);
GetOptions (@USAGE);

if ($TEST) {
	print "$0: TEST: TEST=$TEST\n";
}

$META_DATA{scriptUtils}= AutoFactory::ScriptUtils->new( { TEST => $TEST } );
$META_DATA{scriptUtils}->_USAGE_MESG( $USAGE_MESG );
$META_DATA{scriptUtils}->print_usage_and_exit if ($HELP);
$META_DATA{scriptUtils}->print_usage_and_exit(1) if ($HELP || !$REQ_ARG);

if ($REQ_ARG) {
	print "true REQ_ARG=$REQ_ARG\n";
} else {
	carp "false REQ_ARG=" . Dumper($REQ_ARG);
}


exit 0;

# subs

1;
__END__

=head1 NAME

skeleton - Perl script to  blah blah blah

=head1 SYNOPSIS

  ./skeleton.pl {required options} [other options] 

