#!/bin/bash

INPUTFILE=/share/output.txt
OUTPUTFILE=/share/output.csv
> $OUTPUTFILE

cat $INPUTFILE | while read read ID NAME EMAIL PHONE ADDR
do
    echo "$ID,$NAME,$EMAIL,$PHONE,$ADDR" >> $OUTPUTFILE
done


cat $OUTPUTFILE
