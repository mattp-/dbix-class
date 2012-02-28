package DBICTestConfig;
use base 'DBIx::Class::Schema';

sub connect {
  my($self, @opt) = @_;
  @opt == 4
    and $opt[0] eq 'klaatu'
    and $opt[1] eq 'barada'
    and $opt[2] eq 'nikto'
    and $opt[3]->{ignore_version}
    and exit 71; # this is what the test will expect to see
  exit 1;
}

1;
