#!/bin/bash
###################################
##1、该脚本是创建sqoop的job脚本，原则上只需要执行一次即可，以后不需要执行该脚本，只需要执行sqoop job -exec jobname。
##2、该文件中的全部为非增量表的sqoop的job语句。
##3、如果需要重新运行，则运行方式:load_data_full_sqoop.sh
################################
args=$1
dt=
if [ ${#args} == 0 ]
	then
	    # 若是没有传入参数，默认将昨天的日期赋值给变量dt
		dt=`date -d "1 days ago" "+%Y%m%d"`
	else
		dt=$1
fi

#1. not full load data of take_out_category_code, run every day.
sqoop job --create bap_code_category -- import \
--connect jdbc:mysql://hh:3306/take_out \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table code_category \
--delete-target-dir \
--target-dir /bap/ods/ods_code_category \
--fields-terminated-by '\001' \

#2. 创建一个名为bap_user的job，作用是：将mysql db中的table之user（用户信息表）中的数据import到hdfs的/bap/ods/ods_user/目录下
# 其中，参数：dontTrackOpenResources，意即：不要跟踪打开的资源，当该参数值设置为tue时，在statement关闭后，resultset也会被关闭。
sqoop job --create bap_user -- import \
--connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table user \
--delete-target-dir \
--target-dir /bap/ods/ods_user/ \
--fields-terminated-by '\001' \
-m 10  \

#3. not full load data of bap_user_extend, run every day.
sqoop job --create bap_user_extend -- import \
--connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
--driver com.mysql.jdbc.Driver \
--username root \
--password 123456 \
--table user_extend \
--delete-target-dir \
--target-dir /bap/ods/ods_user_extend/ \
--fields-terminated-by '\001' \

#4.not full load data of bap_user_addr, run every day.
sqoop job --create bap_user_addr -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table user_addr \
 --delete-target-dir \
 --target-dir /bap/ods/ods_user_addr/ \
 --fields-terminated-by '\001' \
 
 
 # 从只读的db中向ods层导入其余的表
 
 #5.not full load data of bap_biz_trade, run every day.
sqoop job --create bap_biz_trade -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table biz_trade \
 --delete-target-dir \
 --target-dir /bap/ods/ods_biz_trade/dt=${dt} \
 --fields-terminated-by '\001' \
 
 hive -e "alter table take_out.ods_biz_trade add partition(dt=${dt} ) location '/bap/ods/ods_biz_trade/dt=${dt}'"
 
  #6.not full load data of bap_cart, run every day.
sqoop job --create bap_cart -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table cart \
 --delete-target-dir \
 --target-dir /bap/ods/ods_cart/dt=${dt} \
 --fields-terminated-by '\001' \
 
 hive -e "alter table take_out.ods_cart add partition(dt=${dt} ) location '/bap/ods/ods_cart/dt=${dt}'"
 
 
    #7.not full load data of bap_city, run every day.
sqoop job --create bap_code_city -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table code_city \
 --delete-target-dir \
 --target-dir /bap/ods/ods_code_city/ \
 --fields-terminated-by '\001' \
 
    #8. not full load data of bap_code_education, run every day.
sqoop job --create bap_code_education -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table code_education \
 --delete-target-dir \
 --target-dir /bap/ods/ods_code_education/ \
 --fields-terminated-by '\001' \
 
 
     #9. not full load data of bap_code_email_suffix, run every day.
sqoop job --create bap_code_email_suffix -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table code_email_suffix \
 --delete-target-dir \
 --target-dir /bap/ods/ods_code_email_suffix/ \
 --fields-terminated-by '\001' \
 
     #10. not full load data of bap_code_goods, run every day.
sqoop job --create bap_code_goods -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table code_goods \
 --delete-target-dir \
 --target-dir /bap/ods/ods_code_goods/ \
 --fields-terminated-by '\001' \
 
  
     #11. not full load data of bap_code_profession, run every day.
sqoop job --create bap_code_profession -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table code_profession \
 --delete-target-dir \
 --target-dir /bap/ods/ods_code_profession/ \
 --fields-terminated-by '\001'  \
 
     #12. not full load data of bap_code_shop, run every day.
sqoop job --create bap_code_shop -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table code_shop \
 --delete-target-dir \
 --target-dir /bap/ods/ods_code_shop/ \
 --fields-terminated-by '\001' \
 
     #13. not full load data of bap_order_delivery, run every day.
sqoop job --create bap_order_delivery -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table order_delivery \
 --delete-target-dir \
 --target-dir /bap/ods/ods_order_delivery/dt=${dt} \
 --fields-terminated-by '\001' \
 
  hive -e "alter table take_out.ods_order_delivery add partition(dt=${dt} ) location '/bap/ods/ods_order_delivery/dt=${dt}'"
 
     #14. not full load data of bap_order_item, run every day.
sqoop job --create bap_order_item -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table order_item \
 --delete-target-dir \
 --target-dir /bap/ods/ods_order_item/dt=${dt} \
 --fields-terminated-by '\001' \
 
 hive -e "alter table take_out.ods_order_item add partition(dt=${dt} ) location '/bap/ods/ods_order_item/dt=${dt}'"

     #15. not full load data of bap_us_order, run every day.
sqoop job --create bap_us_order -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table us_order \
 --delete-target-dir \
 --target-dir /bap/ods/ods_us_order/dt=${dt} \
 --fields-terminated-by '\001' \

 hive -e "alter table take_out.ods_us_order add partition(dt=${dt} ) location '/bap/ods/ods_us_order/dt=${dt}'"
 
     #16. not full load data of bap_user_app_click_log, run every day.
sqoop job --create bap_user_app_click_log -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table user_app_click_log \
 --delete-target-dir \
 --target-dir /bap/ods/ods_user_app_click_log/dt=${dt} \
 --fields-terminated-by '\001' \
 
 hive -e "alter table take_out.ods_user_app_click_log add partition(dt=${dt}) location '/bap/ods/ods_user_app_click_log/dt=${dt}'"
 
     #17. not full load data of bap_user_pc_click_log, run every day.
sqoop job --create bap_user_pc_click_log -- import \
 --connect jdbc:mysql://hh:3306/take_out?dontTrackOpenResources=true\&defaultFetchSize=1000\&useCursorFetch=true \
 --driver com.mysql.jdbc.Driver \
 --username root \
 --password 123456 \
 --table user_pc_click_log \
 --delete-target-dir \
 --target-dir /bap/ods/ods_user_pc_click_log/dt=${dt} \
 --fields-terminated-by '\001' \
 
 hive -e "alter table take_out.ods_user_pc_click_log add partition(dt=${dt} ) location '/bap/ods/ods_user_pc_click_log/dt=${dt}'"