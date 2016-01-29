#########################################
#    CSCI 305 - Programming Lab #1
#
#  < William Paddock >
#  < teck.geek@hotmail.com >
#
#########################################

# Replace the string value of the following variable with your names.
my $name = "William Paddock";
my $partner = null;
print "CSCI 305 Lab 1 submitted by $name and $partner.\n\n";

# Checks for the argument, fail if none given
if($#ARGV != 0) {
    print STDERR "You must specify the file name as the argument.\n";
    exit 4;
}

# Opens the file and assign it to handle INFILE
open(INFILE, $ARGV[0]) or die "Cannot open $ARGV[0]: $!.\n";

my @songs;
my $sep = 0;
my $sep2 = 0
# This loops through each line of the file
while($line = <INFILE>) {
        $sep2 = index($line,"<SEP>",$sep);
        push = (@songs, sunstr($line, $sep, $sep2)
        while(True){
            $sep = $sep2;
            $sep2 = index($line,"<SEP>",$sep);
            if($sep == $sep2)
                last;
            else
                push = (@songs, sunstr($line, $sep, $sep2)
            }
	if(($line =~ m/^[({\/-:"‘+=*feat.]ext$/)== True){
	}
	push (@songs, $line);

}

# Close the file handle
close INFILE;

# At this point (hopefully) you will have finished processing the song
# title file and have populated your data structure of bigram counts.
print "File parsed. Bigram model built.\n\n";


# User control loop
print "Enter a word [Enter 'q' to quit]: ";
$input = <STDIN>;
chomp($input);
print "\n";
while ($input ne "q"){
	# Replace these lines with some useful code
	print "Not yet implemented.  Goodbye.\n";
	$input = 'q';
}

# MORE OF YOUR CODE HERE....
