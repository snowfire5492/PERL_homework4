
#!/usr/bin/perl
########################################################################
#
# a Perl script to take as input, the output of ps aux | grep pts
# and prints a table of the pts entry followed by the command
# (up to the first 60 chars only), sorted by pts entry and then 
# command.
#
########################################################################
# Module Usage

########################################################################
$i = 0;

# getting piped input from program call, Will be $_
while (<>){

	$first_list[ $i ] = substr( $_, 38 , 6 );

	$sec_list[ $i ] = substr( $_, 65 , 60 );

	print $first_list[ $i ] . "  " . $sec_list[ $i++ ];
}

