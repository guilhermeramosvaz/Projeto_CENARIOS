#!/bin/bash

##Reclass nodata values
##Use when you need change after process if conventional way not work
for entrada in *.tif; do
    final="${entrada%.tif}_recalculado.tif"  ##outfile name
    echo "Processando ${entrada}  ->  ${final}"
    gdal_calc.py -A ${entrada} \ 
        --type=Byte \                                           ##Change type of data file
        --outfile= ${final} \ 
        --calc="( A == 1)*63 + ( A == 2)*64 + ( A == 3)*65" \    ##Change values for another values
        --NoDataValue=0 \                                       ##Change no data value
        --co="COMPRESS=LZW" \ 
        --co="BIGTIFF=YES" \ 
        --co="TILED=YES"
done