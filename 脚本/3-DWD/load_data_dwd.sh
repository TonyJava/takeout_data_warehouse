#!/bin/bash

#run with args.eg: ./load_data_dwd.sh 20181225
args=$1
dt=
if [ ${#args} == 0 ]
	then
	    # 若是没有传入参数，默认将昨天的日期赋值给变量dt
		dt=`date -d "1 days ago" "+%Y%m%d"`
	else
		dt=$1
fi

#1. insert overwrite
echo "load dwd layer"
hive -hivevar param_dt=${dt} -f load_data_dwd.sql
