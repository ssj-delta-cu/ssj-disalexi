
for i in ETd_*.hdr; do 
 d=`basename $i .hdr | sed -e s'/ETd_//'`; 
 echo $d.tif;
 gdal_calc.py -A ETd_$d --outfile=$d.tif --calc="10*A" --type='Int16' --co 'COMPRESS=DEFLATE'; 
done