# ssj-disalexi
Thermal satellite based ET on the ALEXI model with high resolution disaggregation using MODIS and Landsat data.

Data can be downloaded either by synchronizing the repository or going to the [releases](https://github.com/ssj-delta-cu/ssj-disalexi/releases) page

## About

Data in folder was received on 4/20/2017 downloaded from usda ars's ftp site. These are the primary source rasters (.hdr) that get converted to geotiffs , multiplied by 10 to change the units to tenths of mm per day and uploaded to a google bucket and then EarthEngine. See `ssj-delta-etssj-disalexi/daily_to_monthly.js` for steps for coverting the dailies to monthlies.

## Notes
There are two datasets there  OUTPUT and OUTPUT_CORR (actually, they are transferring now), the latter of which I believe better captures the lower early season fluxes.  If you are able to compare both, that’s really useful information to me as we decide which to take more operational.  If you can only look at one, take OUTPUT_CORR.

## Data Location
The original data and intermediate data from the processing is not on github since it's quite large (~70 gb). A copy of these files are saved on the CWS network @ `x:/ssj-delta-cu/Code/ssj-disalexi/data/`