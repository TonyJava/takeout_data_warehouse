drop database if exists bap_dm cascade;
create database bap_dm;
drop table if exists bap_dm.dm_user_visit;

 -- 下表中存储的是针对【用户】主题最终统计指标的结果
create  external  table bap_dm.dm_user_visit (
  latest_pc_visit_date string,  -- 最近一次访问时间
  latest_pc_visit_session string, -- 最近一次访问使用的session
  latest_pc_cookies string, -- 最近一次使用的coookie
  latest_pc_pv bigint, -- 最近一次的pc端的pv量
  latest_pc_browser_name string, -- 最近一次访问使用的浏览器
  latest_pc_visit_os string, -- 最近一次访问使用的操作系统
  first_pc_visit_date string,-- 第一次pc端访问的日期
  first_pc_visit_session string,-- 第一次pc端访问的session
  first_pc_cookies string,-- 第一次pc端访问的cookie
  first_pc_pv bigint,-- 第一次访问的pv
  first_pc_browser_name string,-- 第一次访问使用的浏览器
  first_pc_visit_os string, -- 第一次访问的os  
  day7_pc_cnt bigint, -- PC连续7天访问次数(跑任务的日期的前7天,以下相同不再赘述)	
  day15_pc_cnt bigint,-- 连续15天访问次数
  month1_pc_cnt bigint,-- 连续30天访问次数
  month2_pc_cnt bigint,-- 连续60天访问的次数
  month3_pc_cnt bigint,-- 连续90天访问的次数
  month1_pc_days  bigint,--近30天pc端访问的次数
  month1_pc_pv bigint,--近30天pc端的pv
  month1_pc_avg_pv bigint,--近30天pc端每天的平均pv
  month1_pc_hour025_cnt bigint,--0到5点的数量
  month1_pc_hour627_cnt bigint,--6到7点的数量
  month1_pc_hour829_cnt bigint,-- 8到9的数量
  month1_pc_hour10211_cnt bigint,-- 10到11的数量
  month1_pc_hour12213_cnt bigint,--12到13的数量
  month1_pc_hour14216_cnt bigint,-- 14到16点的数量
  month1_pc_hour17219_cnt bigint,-- 17到19点的数量
  month1_pc_hour18219_cnt bigint,-- 18到19点的数量
  month1_pc_hour20221_cnt bigint,-- 20到21点的数量
  month1_pc_hour22223_cnt bigint,-- 22到23点的数量
  month1_pc_diff_ip_cnt bigint,--近30天访问使用的不同ip数量
  month1_pc_common_ip string,--近30天最常用的ip
  month1_pc_diff_cookie_cnt bigint,--近30天使用的cookie的数量
  month1_pc_common_cookie string,--近30使用最常用的cookie_id
  month1_pc_common_browser_name string,-- pc最常用浏览器
  month1_pc_common_os string,-- 近30天使用最常用系统
  latest_app_visit_date string,--最近一次app访问的日期  			   -- app指标
  latest_app_name string,-- 最近一次访问app的名称
  latest_app_visit_os string,-- 最近一次app访问的操作系统
  first_app_visit_date string,-- 第一次app访问日期
  first_app_name string,-- 第一app访问名称
  first_app_visit_os string,-- 第一次app访问os
  first_app_visit_ip string,--app第一次访问ip
  day7_app_cnt bigint,-- app 近7天访问次数
  day15_app_cnt bigint,-- app 近15天访问次数
  month1_app_cnt bigint,-- app 近30天的访问次数
  month2_app_cnt bigint,-- app近60天的访问次数
  month3_app_cnt bigint,-- app近90天的访问次数
  month1_app_hour025_cnt bigint,-- app近30天0到5点的访问次数
  month1_app_hour627_cnt bigint,-- app近30天的6到7点的访问次数
  month1_app_hour829_cnt bigint,-- app近30天8到9的访问次数
  month1_app_hour10211_cnt bigint,-- app近30天10到11访问次数
  month1_app_hour12213_cnt bigint,-- app近30天12到13点的访问次数
  month1_app_hour14215_cnt  bigint,-- app近30天14到15点的访问次数
  month1_app_hour16217_cnt bigint,-- app近30天16到17点的访问次数
  month1_app_hour18219_cnt bigint,-- app近30天18到19点的访问次数
  month1_app_hour20221_cnt bigint,-- app近30天20到21点的访问次数
  month1_app_hour22223_cnt bigint,-- app近30天22到23点的访问次数
  latest_visit_ip   string,--最近一次访问的ip 			-- 综合指标
  latest_city         string  ,--最近一次访问的城市
  latest_province   string   ,-- 最近一次访问的省份
  first_visit_ip      string  ,-- 第一次访问的ip
  first_city         string  ,-- 第一次访问的城市
  first_province string-- 第一次访问的省份
)
partitioned by (dt string)
location '/bap/dm/dm_user_visit';

