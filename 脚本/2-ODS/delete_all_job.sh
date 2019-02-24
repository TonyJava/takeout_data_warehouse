#!/bin/bash
############################
#前提：
##　--create <job-id>  创建一个新的job.
##　--delete <job-id>  删除job
##　--exec <job-id>     执行job
##　--show <job-id>    显示job的参数
##　--list                        列出所有的job
################################
#run sqoop job
echo "开始删除sqoop job... ..."
sqoop job --delete bap_code_category
sqoop job --delete bap_user
sqoop job --delete bap_user_extend
sqoop job --delete bap_user_addr
echo "删除sqoop job结束... ..."
sqoop job --list
