## USAPR
Perl API client that will allow you to fetch product recall data in json format from the following Organizations:

* - NHTSA - National Highway Traffic Safety Administration
* - CPSC - Consumer Product Safety Commission 
* - CDC - Centers for Disease Control and Prevention


## How to use these modules?

This will output a json data structure from NHTSA based on the following criteria:

keyword : engine
start date : 12-01-2010
end date : 12-01-2011

```perl
use USAPR::NHTSA;

my $usapr = USAPR::NHTSA->('engine','12-01-2010','12-01-2011');
print $usapr->fetch_recalls();
```
