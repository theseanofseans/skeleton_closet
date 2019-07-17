#!/usr/bin/perl -I/home/mobaxterm/documents/perl_lib 
# TEMPLATE VERSION= 0.05 

use warnings;
use strict;
use Data::Dumper;
use Getopt::Long;
# https://perldoc.perl.org/Carp.html
use Carp;
use AutoFactory::ScriptUtils;
use DateWork;

our $VERSION= 0.02;
our $HELP= 0;
our $DEBUG= 0;
my $RUN= '';

our $DAY= 0;
our $TEST= 0;
#print "$0: TEST: X\n" if ($TEST);
#print "$0: TEST: X\n";
our $WRITE= 1;

my $USAGE_MESG= qq[
$0 VERSION=$VERSION
USAGE: $0 [--help] [--day YYYYMMDD (d:today)] [--test (d: TEST=0)] [--write (d: WRITE=1)] [--nowrite (WRITE=0)] 
];
my @USAGE= (
	'day=i' => \$DAY ,
	'test' => \$TEST ,
	'write!' => \$WRITE ,
#	'arg' => \$ARG ,

	'debug' => \$DEBUG ,
	'help' => \$HELP
);
GetOptions (@USAGE);

if ($TEST) {
	print "$0: TEST: TEST=$TEST\n";
	print "$0: TEST: WRITE=$WRITE\n";
}

my $af_su= AutoFactory::ScriptUtils->new( { test => $TEST } );
$af_su->_USAGE_MESG( $USAGE_MESG );
$af_su->print_usage_and_exit if ($HELP);
#$af_su->print_usage_and_exit(1) if ($HELP || !$ARG);

#  my $ptr= DateWork->new({ TEST=> 0|1 }); # (d:0)
# $ptr->populate_day_vars( $YYYYMMDD );
# $ptr->populate_day_vars(); # d:today 
## SEC=$ptr->_SEC , MIN=$ptr->_MIN , HOUR=$ptr->_HOUR , MDAY=$ptr->_MDAY , FMDAY=$ptr->_FMDAY , MON=$ptr->_MON , 
## FMON=$ptr->_FMON , YEAR=$ptr->_YEAR , WDAY=$ptr->_WDAY , YDAY=$ptr->_YDAY , ISDST=$ptr->_ISDST , DOW=$ptr->_DOW

my $DW= DateWork->new();
$DW->populate_day_vars(); # d:today 
$DW->print_all_instance_vars() if ($TEST);


exit 0;

# my $time= &time_from_day( $YYYYMMDD );
# moved to DateWork
##sub time_from_day() { }

# moved to DateWork
##sub populate_day_vars() {}


1;
__END__

=head1 NAME

skeleton - Perl script to  blah blah blah

=head1 SYNOPSIS

  ./skeleton.pl {required options} [other options] 

