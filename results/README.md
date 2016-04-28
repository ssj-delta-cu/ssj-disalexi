# Results (Model)

This is a template for how the results of each modeling effort should be organized, the idea being that each model can be reviewed in the same manner. Use the README.md file to give a brief overview of the model, and the results supplied.  If you are including data not specified in the standard dataset, please describe the differences.  

If you have multiple results, please follow this same format, but use different base directories; prefixed with ```results```, for example, the prescriptive _ET_ calculation method may include _results_cdl/_ and _results_nasa/_ directories to describe results from two different landcover maps.

Note, that you are required to supply the files: ```wy2015/monthly.csv``` and
the raster ```wy2015/monthly/ET.tif```.


## Daily (and Monthly) Parameters

Throughout the results the following parameter names should be used.  The values
in () specify the units for the parameters.  For monthly or yearly summaries, the values should still be scaled to the daily estimates.  For example, the monthly _ET_ for June should be represented as the average daily value.

- _ET_ (mm/day) Evapotranspiration.  This is the actual/estimated values.  Daily, monthly, and yearly estimates can be supplied, but should be scaled to a per day estimate.

- _ETo_ (mm/day) Reference Evapotranspiration--Short Grass.  This is the ASCE reference value for short grass.

- _ETr_ (mm/day) Reference Evapotranspiration--Alfalfa.  This is the ASCE reference value for alfalfa.

- _Kc_ (unitless) Crop coefficient, defined as _ET_/_ETo_.

- _Kcr_ (unitless) Crop coefficient (alfalfa) defined as _ET_/_ETr_.

- _Ts_ (C) Surface Temperature.  This is the modeled value of the actual
surface.  For

- _H_ (Wh/m^2) Sensible Heat Flux.  This is the measured/modeled value.  This is the daily value.  For instantaneous values use _iH_ (W/m^2).

- _G_ (Wh/m^2 ) Soil Heat Flux. For instantaneous values use _iG_ (W/m^2).

- _lc_dwr_ or _lc_cdl_ (categorical) DWR Land Cover Crop types.  You can either specify what landcover map you are using of those supplied, eg.
 - [ssj-landcover-nasa](https://github.com/ssj-delta-cu/ssj-nasa-landcover/)
 - [ssj-overview](https://github.com/ssj-delta-cu/ssj-overview/)

 or specify a landcover map yourself.  If you specify your own, you must use either the Cropland Data Layer identifiers, or the DWR Landcover classes.

## Instantaneous values

Some satellite based products will want to report some of these values as their instantaneous value, for comparison.  Typically we use a _i_ prefix on the values.  They usually have different units as well.  The time the instantaneous value is measured needs to be referenced.

- _iET_ (mm/hr)
- _iETo_ (mm/hr)
- _iETr_ (mm/day)
- _iTs_ (C) For a satellite overpass, this is the instantaneous temperature.
- _iH_ (W/m^2)
- _iG_ (W/m^2 )
- _iRn_ (W/m^2)

## Raster Data Products

Hi-resolution images can be supplied in a projection consistent with the underlying landsat data product.  They  should be supplied in EPSG:26910, with the lower left coordinate (ll)=```596898, 4162595``` and upper right coordinate (ur)=```656748```, 4276385``` at 30 (m) resolution. This results in images that are of size ```1995,3793```.

Images should be named for the parameter they represent. Multiple bands for an image will always be different times, not different parameters.  You should supply the data as floating point values for each pixel.

Please *do not* supply complete landsat images in you results, only for the region described above.


## Weather Parameters

Additional weather specific parameters have been defined in the the [ssj-weather](https://github.com/ssj-delta-cu/ssj-weather) project.  Please use the same naming scheme there.  Please note the difference in Radiation, defined in units (MJ/m^2) as opposed to some of the other defined energy fluxes, (Wh/m^2)  ```1MJ=277.778 Wh```.  This is to maintain consistency with results from the Spatial CIMIS application.
