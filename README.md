## USAPR
Perl API client that will allow you to fetch product recall data in json format from the following Organizations:

* - NHTSA - National Highway Traffic Safety Administration
* - CPSC - Consumer Product Safety Commission 
* - CDC - Centers for Disease Control and Prevention


## How to use these modules?

By default you will need to pass the following 3 fields ( query, start_date, end_date)
* query : engine
* start_date : 12-01-2010
* end_date : 12-01-2011

query field is the keyword string used to conduct your search.
start_date and end_date will filter down your results by dates.

Please Note that the date format for start_date and end_date is MM-DD-YYYY

This sample code below will output a json data structure from NHTSA.

```perl
use USAPR::NHTSA;

my $usapr  =  USAPR::NHTSA->new({
    query => 'engine',
    start_date => '12-01-2010',
    end_date => '12-01-2011',
});

print $usapr->fetch_recalls();
```
