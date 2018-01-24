# Taken from http://perl.apache.org/docs/2.0/user/handlers/server.html#Startup_File
if ( ! $ENV{MOD_PERL}) { die "GATEWAY_INTERFACE not Perl!"; }
#use lib qw(/srv/www/perl-lib);
use lib qw(/home/sung/perl6/lib/perl5);
use lib qw(/home/sung/perl5/lib/perl5/x86_64-linux-thread-multi);
use lib qw(/data/Serve/Web/Nectarmutation.org/Nectar-Web/lib); # Nectar::Web

# To avoid zombie process 
# http://perl.apache.org/docs/1.0/guide/performance.html#Avoiding_Zombie_Processes
$SIG{CHLD} = 'IGNORE';

# To enable Installing illegal accessor '2u_id' into Nectar::Schema::CARDIODB::Result::2Pd
$ENV{CAG_ILLEGAL_ACCESSOR_NAME_OK}=1;
1;
