#!/bin/bash

#Generate csv file: ./gen_call_csv.sh > call.csv 
#File struct: 1000;192.168.9.206;[authentication username=1000 password=123mudar1000];1001;
#	      extension;server;[authentication username=username password=password];call_target; 


#TYPE: RANDOM, SEQUENTIAL AND USER
echo "SEQUENTIAL" 
for i in `seq 1000 1010`; do
        echo "$i;192.168.9.206;[authentication username=$i password=123mudar$i];$(($i+1));"
done
