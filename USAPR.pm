package USAPR;

use strict;
use URI;
use LWP::UserAgent;
use Data::Dumper;
use constant API_URL => "http://search.usa.gov/search/recalls"; 

# TODO: make query, start_date, and end_date required fields
# and error out if these fields don't exists.

# TODO: support sort, page, per_page fields to api call
sub new {
    my  $class = shift;
    my  $self = shift;
    
    $self->{organization} = $class->organization || '';
    
    bless($self, $class);
    return $self
};


sub fetch_recalls {
    my $self = shift;
    
    my $url = URI->new(API_URL);
    $url->query_form( 
        format => 'json',
        query  => $self->{query} || '',
        start_date => $self->{start_date} ||'', 
        end_date => $self->{end_date} || '',
        organization => $self->{organization} || '',
    );
    my $ua = LWP::UserAgent->new();
    my $response = $ua->get($url);
    die "Error: " . $response->status_line unless $response->is_success;
    return $response->content; 
};

1;

