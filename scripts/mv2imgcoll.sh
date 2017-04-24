#!/bin/bash

# get list of assets in folder
folder='users/ucd-cws-ee-data/ssj-delta-cu/ssj-disalexi/output/et_daily'
dest='users/ucd-cws-ee-data/ssj-delta-cu/ssj-disalexi/et_daily_output'
assets=$(earthengine ls $folder)

for a in $assets; do
	b=$(basename $a)
	echo "Moving asset: $b --> $dest/$b";
	earthengine cp $a $dest/$b;
done