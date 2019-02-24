#!/bin/bash

#run with args.eg: ./load_data_dws.sh 20181225
args=$1
dt=
if [ ${#args} == 0 ]
then
	dt=`date -d "1 days ago" "+%Y%m%d"`
else
	dt=$1
fi

args2=$2
ti=
if [ ${#args2} == 0 ]
then
	ti=`date -d "5 days ago" "+%Y%m%d"`
else
	ti=$2
fi

#1. insert overwrite
echo "load dm_user_visit"
hive -hivevar param_dt=${dt}  -hivevar param_time=${ti}  -f  load_data_dm.sql