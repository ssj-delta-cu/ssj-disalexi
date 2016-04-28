# Water Year 2015

This directory is meant to supply and overall average _ET_ for the complete Water Year 2015 (2014-10-01 thru 2015-09-30).  

# Rasters

You may supply ```ET.tif``` showing the average daily _ET_ for the Delta Service area for the entire year.  

# CSV files

You must supply a table of the monthly ET (```monthly.csv```) over a set of regions for the Delta Service Area.  The regions must include: dsa,islands,points,crops?


## CSV formats

For the ```monthly.csv``` file, the format is shown below.  The date is the first date of the month for which the estimate is made.  

```
date,region,ET,(ETo,Kc,....)
2014-10-01,dsa,5.1,...
2014-11-01,dsa,4.3,....
```


The ```daily.csv``` follows the same format, with the date showing the actual date for the estimates.

```
date,region,ET,(ETo,Kc,....)
2014-10-01,dsa,5.40
2014-10-02,dsa,5.43
```
