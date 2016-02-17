#########################################
#    CSCI 305 - Programming Lab #1
#
#  < William Paddock > < Ryan Darnell >
#  < teck.geek@hotmail.com >
#
#########################################

# Replace the string value of the following variable with your names.
my $name = "William Paddock";
my $partner = "Ryan Darnell";
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
my $sep2 = 0;
my $sep3 = 0;
my @split;
my $title;
my $i = 0;
my @undesirable = ('\"','/','-',':','\'','\+','\=','\*');
my @punctuation = ('\?', '\x{bf}', '!', '\x{a1}', '\.', ';', '&', '\$', '\@', '%', '\#', '\|');
# This loops through each line of the file
while($line = <INFILE>) {
        $sep2 = index($line,"<SEP>",$sep);
	@split = split /<SEP>/, $line;
        $title = $split[3];
	$title =~ s/\(.*//g;
	$title =~ s/"feat\..*"//g;
	chomp($title);

	foreach $undesirable (@undesirable){
		$title =~ s/$undesirable//g;
            }
	foreach $punct (@punctuation){
		$title =~ s/$punct//g;
	}

	#Push if no accent characters and push to lowercase
	if ($title =~ /[\x30 - \x7b]/) {
		$title = lc $title;
		push @songs, $title;
	}

}

# Close the file handle
close INFILE;

# At this point (hopefully) you will have finished processing the song
# title file and have populated your data structure of bigram counts.
print "File parsed. Bigram model built.\n\n";

#print list to check
/*foreach my $single (@songs){
	print "$single\n";
}*/
$lastword = 'File-start';
$wordcounts{$lastword}++;
foreach my $single (@songs){
   $wordcounts{$songs}++;
   $totalwords++;
  $word_pair_counts{"$lastword,$songs"} = [$lastword, $songs];
  $lastword = $word;
}
$word_pairs_printed = 0;
foreach  (sort  { $word_pair_counts{$b} <=> $word_pair_counts{$a} } keys %word_pair_counts) {
   ($word1, $word2) = split(/,/);
}
# User control loop
print "Enter a word [Enter 'q' to quit]: ";
$input = <STDIN>;
chomp($input);
print '\n';

while ($input ne 'q'){
	# Replace these lines with some useful code
    foreach $key (keys %word_pair_counts){
        if index($keys, $input) != -1{
            print "The most common key pairs with your value is $key with $word_pair_counts{$keys}\n";
        }
    }

}
# MORE OF YOUR CODE HERE....
