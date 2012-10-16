## USAPR
Perl API client that will allow you to fetch product recall data in json format from the following Organizations:

1 - NHTSA - National Highway Traffic Safety Administration
2 - CPSC - Consumer Product Safety Commission 
3 - CDC - Centers for Disease Control and Prevention


## How to use these modules?

```perl
use USAPR::NHTSA;

my $usapr = USAPR::NHTSA->('engine','12-01-2010','12-01'2011');
$usapr->fetch_recalls();
```
