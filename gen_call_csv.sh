#!/bin/bash

#Generate csv file: ./gen_call_csv.sh > call.csv 
#File struct: 1000;192.168.9.127;[authentication username=1000 password=asterisk1000];1001;
#	      extension;server;[authentication username=username password=password];call_target; 


#TYPE: RANDOM, SEQUENTIAL AND USER
echo "RANDOM" 
for i in `seq 1000 3000`; do
        echo "$i;192.168.9.127;[authentication username=$i password=asterisk$i];1001;"
done
