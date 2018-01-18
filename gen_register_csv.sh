#!/bin/bash

#Generate csv file: ./gen_register_csv.sh > register.csv 
#File struct: 1000;192.168.9.206;[authentication username=1000 password=123mudar1000];
#	      extension;server;[authentication username=username password=password]; 


#TYPE: RANDOM, SEQUENTIAL AND USER
echo "SEQUENTIAL" 
for i in `seq 1000 1010`; do
        echo "$i;192.168.9.206;[authentication username=$i password=123mudar$i];"
done
