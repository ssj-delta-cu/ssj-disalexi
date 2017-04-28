for i in *.tif; do 
 n=`echo $i | sed -e 's/^20[0-9][0-9]//' -e s/\.tif//`; 
 y=${i:0:4}
 d=`date --date="$y-01-01 -1 days +$n days" --iso`; 
 echo $d
 earthengine upload image --asset_id=users/ucd-cws-ee-data/ssj-delta-cu/ssj-disalexi/output_corr/et_daily/$d \
 --time_start="$d" --pyramiding_policy=mean --nodata_value=-32767 gs://earth-engine-staging/ssj-disalexi/OUTPUT_CORR/$i; 
done