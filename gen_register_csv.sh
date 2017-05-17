#!/bin/bash

#Generate csv file: ./gen_register_csv.sh > register.csv 
#File struct: 1000;192.168.9.127;[authentication username=1000 password=asterisk1000];
#	      extension;server;[authentication username=username password=password]; 


#TYPE: RANDOM, SEQUENTIAL AND USER
echo "RANDOM" 
for i in `seq 1000 3000`; do
        echo "$i;192.168.9.127;[authentication username=$i password=asterisk$i];"
done
