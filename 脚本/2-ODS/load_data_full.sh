#!/bin/bash
############################
#前提：
##　sqoop job 保存常用的作业，以便下次快速调用
##
##　--create <job-id>  创建一个新的job.
##　--delete <job-id>  删除job
##　--exec <job-id>     执行job
##　--show <job-id>    显示job的参数
##　--list                        列出所有的job
##1、执行该脚本，需要保证sqoop的job已经被创建好(语句在load_data_full_sqoop.txt中,如果没有job，需创建).
sqoop job --list
#sqoop job --delete jobname
#sqoop job -exec jobname
##2、每天凌晨2点定时执行如下的sqoop的job，全为全量表的数据加载。
##3、如果有问题，需要重新跑job。
##4、运行方式。./load_data_full.sh
################################
#run sqoop job
echo "开始使用sqoop加载全量数据... ..."

sqoop job --exec  bap_biz_trade
sqoop job --exec  bap_cart
sqoop job --exec  bap_code_category
sqoop job --exec  bap_code_city
sqoop job --exec  bap_code_education
sqoop job --exec  bap_code_email_suffix
sqoop job --exec  bap_code_goods
sqoop job --exec  bap_code_profession
sqoop job --exec  bap_code_shop
sqoop job --exec  bap_order_delivery
sqoop job --exec  bap_order_item
sqoop job --exec  bap_us_order
sqoop job --exec  bap_user
sqoop job --exec  bap_user_addr
sqoop job --exec  bap_user_app_click_log
sqoop job --exec  bap_user_extend
sqoop job --exec  bap_user_pc_click_log

echo "使用sqoop加载全量数据结束... ..."
