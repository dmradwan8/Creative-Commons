#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';

# Creative Commons (CC) Code in Perl

# 1
my $cc_license = <<"END_OF_LICENSE";
Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)
END_OF_LICENSE
print $cc_license;

# 2
sub cc_license_display {
    my $title = shift;
    print "\n$title\n$cc_license\n";
}

# 3
cc_license_display("Creative Commons License");

# 4
my $cc_url = "http://creativecommons.org/";

# 5
sub cc_license_link {
    my $title = shift;
    print "\n$title:\n$cc_url\n";
}

# 6
cc_license_link("Visit the Creative Commons website");

# 7
sub cc_url_shortener {
    my $input_url = shift;
    # Implement URL shortener
    my $shortened_url = $input_url;
    return $shortened_url;
}

# 8
my $cc_short_url = cc_url_shortener($cc_url);
print "\nShortened CC URL: $cc_short_url\n";

# 9
sub cc_license_info {
    print "\n\nAttribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)\n\n";
    print "This is a human-readable summary of (and not a substitute for) the license.\n";
    print "You are free to: Share — copy and redistribute the material in any medium or format\n";
    print "Under the following terms:\n";
    print "Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.\n";
    print "NonCommercial — You may not use the material for commercial purposes.\n";
    print "ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.\n";
    print "No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.\n";
}

# 10
cc_license_info();

# 11
my $cc_share_url = "http://creativecommons.org/share-your-work/";

# 12
sub cc_share_link {
    my $title = shift;
    print "\n$title:\n$cc_share_url\n";
}

# 13
cc_share_link("Share Your Work");

# 14
sub cc_share_info {
    print "\n\nLearn more about how to share your work under the Creative Commons license at:\n";
    print "$cc_share_url\n";
    print "You can find more information about Creative Commons licenses on their website.\n";
}

# 15
cc_share_info();