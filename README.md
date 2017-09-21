# wp4-accounting
Scripts for querying the EGI Accounting DB (using API published in https://wiki.egi.eu/wiki/Accounting_Portal_API)

Requirements: python module "requests", installable e.g. via command "$ pip install requests" 

Example of use:

$ ./westlife-accounting.sh

Insert time range YYYY/MM YYYY/MM

Example : ./westlife-accounting.sh 2015/11 2017/8

$ ./westlife-accounting.sh 2015/11 2017/8

HTC Platform KPIs:

Number of jobs submitted=6405196

Normalized CPU Hours used=35634325

Cloud Platform KPIs:

Number of VMs run=1044

Wall Time Hours used=177285

$ ./westlife-accounting-monthly.sh

Produces a CSV table of those numbers, starting from 2015/11 till the current month. Easy to hack.
