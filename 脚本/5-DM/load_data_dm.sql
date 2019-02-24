-- load data to dm_user_visit
insert overwrite table bap_dm.dm_user_visit partition(dt=${hivevar:param_dt})
select 
  regexp_replace(pc.latest_pc_visit_date,'\N','') ,  -- 最近一次访问时间
  regexp_replace(pc.latest_pc_visit_session,'\N','') , -- 最近一次访问使用的session
  regexp_replace(pc.latest_pc_cookies,'\N','') , -- 最近一次使用的coookie
  regexp_replace(pc.latest_pc_pv,'\N','') , -- 最近一次的pc端的pv量
  regexp_replace(pc.latest_pc_browser_name,'\N','') , -- 最近一次访问使用的浏览器
  regexp_replace(pc.latest_pc_visit_os,'\N','') , -- 最近一次访问使用的操作系统
  regexp_replace(pc. first_pc_visit_date,'\N','') ,-- 第一次pc端访问的日期
  regexp_replace(pc. first_pc_visit_session,'\N','') ,-- 第一次pc端访问的session
  regexp_replace(pc. first_pc_cookies,'\N','') ,-- 第一次pc端访问的cookie
  regexp_replace(pc. first_pc_pv,'\N','') ,-- 第一次访问的pv
  regexp_replace(pc. first_pc_browser_name,'\N','') ,-- 第一次访问使用的浏览器
  regexp_replace(pc. first_pc_visit_os,'\N','') , -- 第一次访问的os  
  regexp_replace(pc.day7_pc_cnt,'\N','') , -- PC连续7天访问次数(跑任务的日期的前7天,以下相同不再赘述)
  regexp_replace(pc.day15_pc_cnt,'\N','') ,-- 连续15天访问次数
  regexp_replace(pc.month1_pc_cnt,'\N','') ,-- 连续30天访问次数
  regexp_replace(pc.month2_pc_cnt,'\N','') ,-- 连续60天访问的次数
  regexp_replace(pc.month3_pc_cnt,'\N','') ,-- 连续90天访问的次数
   
  regexp_replace(pc.month1_pc_days,'\N','')  ,--近30天pc端访问的次数
  regexp_replace(pc.month1_pc_pv,'\N','') ,--近30天pc端的pv
  regexp_replace(pc.month1_pc_avg_pv,'\N','') ,--近30天pc端每天的平均pv
  
  regexp_replace(pc.month1_pc_hour025_cnt,'\N','') ,--0到5点的数量
  regexp_replace(pc.month1_pc_hour627_cnt,'\N','') ,--6到7点的数量
  regexp_replace(pc.month1_pc_hour829_cnt,'\N','') ,-- 8到9的数量
  regexp_replace(pc.month1_pc_hour10211_cnt,'\N','') ,-- 10到11的数量
  regexp_replace(pc.month1_pc_hour12213_cnt,'\N','') ,--12到13的数量
  regexp_replace(pc.month1_pc_hour14216_cnt,'\N','') ,-- 14到16点的数量
  regexp_replace(pc.month1_pc_hour17219_cnt,'\N','') ,-- 17到19点的数量
  regexp_replace(pc.month1_pc_hour18219_cnt,'\N','') ,-- 18到19点的数量
  regexp_replace(pc.month1_pc_hour20221_cnt,'\N','') ,-- 20到21点的数量
  regexp_replace(pc.month1_pc_hour22223_cnt,'\N','') ,-- 22到23点的数量
  
  regexp_replace(pcm.month1_pc_diff_ip_cnt,'\N','') ,--近30天访问使用的不同ip数量
  regexp_replace(pcm.month1_pc_common_ip,'\N','') ,--近30天最常用的ip
  regexp_replace(pcm.month1_pc_diff_cookie_cnt,'\N','') ,--近30天使用的cookie的数量
  regexp_replace(pcm.month1_pc_common_cookie,'\N','') ,--近30使用最常用的cookie_id
  regexp_replace(pcm.month1_pc_common_browser_name,'\N','') ,-- pc最常用浏览器
  regexp_replace(pcm.month1_pc_common_os,'\N','') ,-- 近30天使用最常用系统
   
   -- app指标
  regexp_replace(app.latest_app_visit_date,'\N','') ,--最近一次app访问的日期
  regexp_replace(app.latest_app_name,'\N','') ,-- 最近一次访问app的名称
  regexp_replace(app.latest_app_visit_os,'\N','') ,-- 最近一次app访问的操作系统
  regexp_replace(app.first_app_visit_date,'\N','') ,-- 第一次app访问日期
  regexp_replace(app.first_app_name,'\N','') ,-- 第一app访问名称
  regexp_replace(app.first_app_visit_os,'\N','') ,-- 第一次app访问os
  regexp_replace(app.first_app_visit_ip,'\N','') ,--app第一次访问ip
  regexp_replace(app.day7_app_cnt,'\N','') ,-- app 近7天访问次数
  regexp_replace(app.day15_app_cnt,'\N','') ,-- app 近15天访问次数
  regexp_replace(app.month1_app_cnt,'\N','') ,-- app 近30天的访问次数
  regexp_replace(app.month2_app_cnt,'\N','') ,-- app近60天的访问次数
  regexp_replace(app.month3_app_cnt,'\N','') ,-- app近90天的访问次数
  regexp_replace(app.month1_app_hour025_cnt,'\N','') ,-- app近30天0到5点的访问次数
  regexp_replace(app.month1_app_hour627_cnt,'\N','') ,-- app近30天的6到7点的访问次数
  regexp_replace(app.month1_app_hour829_cnt,'\N','') ,-- app近30天8到9的访问次数
  regexp_replace(app.month1_app_hour10211_cnt,'\N','') ,-- app近30天10到11访问次数
  regexp_replace(app.month1_app_hour12213_cnt,'\N','') ,-- app近30天12到13点的访问次数
  regexp_replace(app.month1_app_hour14215_cnt ,'\N','') ,-- app近30天14到15点的访问次数
  regexp_replace(app.month1_app_hour16217_cnt,'\N','') ,-- app近30天16到17点的访问次数
  regexp_replace(app.month1_app_hour18219_cnt,'\N','') ,-- app近30天18到19点的访问次数
  regexp_replace(app.month1_app_hour20221_cnt ,'\N',''),-- app近30天20到21点的访问次数
  regexp_replace(app.month1_app_hour22223_cnt,'\N','') ,-- app近30天22到23点的访问次数

  -- 综合指标 (注意点：比较的依据是日期，据此得出相应的指标！)
  regexp_replace((case when 
    pc.latest_pc_visit_date>app.latest_app_visit_date 
    then   pc.latest_pc_visit_ip 
    else  app.latest_app_visit_ip
    end ),'\N','') latest_visit_ip   ,--最近一次访问的ip
  
 regexp_replace((case when 
    pc.latest_pc_visit_date>app.latest_app_visit_date 
    then   pc.latest_pc_city
    else  app.latest_app_city
    end ),'\N','') latest_city           ,--最近一次访问的城市
  
 regexp_replace((case when 
    pc.latest_pc_visit_date>app.latest_app_visit_date 
    then   pc.latest_pc_province 
    else  app.latest_app_province
    end ),'\N','') latest_province      ,-- 最近一次访问的省份
  
 regexp_replace((case when 
    pc.first_pc_visit_date<app.first_app_visit_date 
    then   pc.first_pc_visit_ip 
    else  app.first_app_visit_ip
    end ),'\N','') first_visit_ip        ,-- 第一次访问的ip
  
 regexp_replace((case when 
    pc.first_pc_visit_date<app.first_app_visit_date 
    then   pc.first_pc_city 
    else  app.first_app_city
    end ),'\N','') first_city           ,-- 第一次访问的城市
  
  regexp_replace((case when 
    pc.first_pc_visit_date<app.first_app_visit_date 
    then   pc.first_pc_province 
    else  app.first_app_province
    end ),'\N','') first_province -- 第一次访问的省份
from  bap_dws.dw_user_basic uw  -- 用户宽表
left join ( 
  -- pc端指标
  select 
    user_id
    ,max(case when rn_desc = 1 then in_time end) latest_pc_visit_date -- 最近一次访问时间
    ,max(case when rn_desc=1 then visit_ip end) latest_pc_visit_ip --最近一次的访问ip
    ,max(case when rn_desc=1 then province end) latest_pc_province
    ,max(case when rn_desc=1 then city end) latest_pc_city
    ,max(case when rn_desc = 1 then session_id end) latest_pc_visit_session -- 最近一次访问的session
    ,max(case when rn_desc = 1 then cookie_id end ) latest_pc_cookies-- 最近一次的coookie
    ,max(case when rn_desc = 1 then pv end) latest_pc_pv -- 最近一次的pc端的pv量
    ,max(case when rn_desc = 1 then browser_name end ) latest_pc_browser_name -- 最近一次访问使用的浏览器
    ,max(case when rn_desc = 1 then visit_os end ) latest_pc_visit_os-- 最近一次访问使用的操作系统
    ,max(case when rn_asc = 1 then in_time end) first_pc_visit_date -- 最早pc端访问的日期
    ,max(case when rn_asc=1 then visit_ip end) first_pc_visit_ip --最近一次的访问ip

    ,max(case when rn_asc=1 then province end) first_pc_province
    ,max(case when rn_asc=1 then city end) first_pc_city
    ,max(case when rn_asc = 1 then session_id end ) first_pc_visit_session--最早pc端访问的session
    ,max(case when rn_asc = 1 then cookie_id end ) first_pc_cookies-- 最早pc端访问的cookie
    ,max(case when rn_asc = 1 then pv end ) first_pc_pv-- 最早一次访问的pv
    
    ,max(case when rn_asc = 1 then browser_name end) first_pc_browser_name -- 最早一次访问使用的浏览器
    ,max(case when rn_asc = 1 then visit_os end) first_pc_visit_os-- 最早一次访问的os
    
    -- 下述五个指标中存储的是当前用户连续7天，15天，。。。,所有session总的访问次数（注意：不是pv）,就是一个用户不同session的个数。
    ,sum(dt7) day7_pc_cnt --连续7天访问次数
    ,sum(dt15) day15_pc_cnt-- 连续15天访问次数
    ,sum(dt30) month1_pc_cnt -- 连续30天访问次数
    ,sum(dt60) month2_pc_cnt-- 连续60天访问的次数
    ,sum(dt90) month3_pc_cnt -- 连续90天访问的次数
    
    -- 下述指标求的是当前用户近30天pc端访问的次数，每天无论访问了多少次，算一次
    ,count(distinct (case when dt30=1 then substr(in_time,0,8) end)) month1_pc_days --近30天pc端访问的次数
    ,sum(case when dt30=1 then pv end ) month1_pc_pv --近30天pc端的pv
    ,sum(case when dt30=1 then pv end ) 
     /count(distinct(case when dt30=1 then substr(in_time,0,8) end)) month1_pc_avg_pv --近30天pc端每天的平均pv
     
    -- 下述指标求的是近一个月内，不同时段访问外卖平台的总次数
    ,count(case when dt30=1 and hr025=1 then 1 end ) month1_pc_hour025_cnt --0到5点的数量
    ,count(case when dt30=1 and hr627=1 then 1 end ) month1_pc_hour627_cnt --6到7点的数量
    ,count(case when dt30=1 and hr829=1 then 1 end ) month1_pc_hour829_cnt -- 8到9的数量
    ,count(case when dt30=1 and hr10211=1 then 1 end ) month1_pc_hour10211_cnt -- 10到11的数量
    ,count(case when dt30=1 and hr12213=1 then 1 end ) month1_pc_hour12213_cnt --12到13的数量
    ,count(case when dt30=1 and hr14216=1 then 1 end ) month1_pc_hour14216_cnt -- 14到16点的数量
    ,count(case when dt30=1 and hr17219=1 then 1 end ) month1_pc_hour17219_cnt -- 17到19点的数量
    ,count(case when dt30=1 and hr18219=1 then 1 end ) month1_pc_hour18219_cnt -- 18到19点的数量
    ,count(case when dt30=1 and hr20221=1 then 1 end ) month1_pc_hour20221_cnt -- 20到21点的数量
    ,count(case when dt30=1 and hr22223=1 then 1 end ) month1_pc_hour22223_cnt -- 22到23点的数量
    
    from (
      select 
        row_number() over(distribute by user_id sort by in_time asc) rn_asc,
        row_number() over(distribute by user_id sort by in_time desc) rn_desc,
        
        user_id,
        session_id,
        cookie_id,
        visit_os,
        browser_name,
        visit_ip,
        province,
        city,
        
        -- 当前session开始访问外卖平台的时间是否在给定时间的前一周，前2周，。。。。
        (case when date_format(in_time,'yyyy-MM-dd') >=date_add('${hivevar:param_time}',-6) then 1 end ) dt7,
        (case when  date_format(in_time,'yyyy-MM-dd')>=date_sub('${hivevar:param_time}',14) then 1 end ) dt15,
        (case when date_format(in_time,'yyyy-MM-dd') >= date_sub('${hivevar:param_time}',29) then 1 end) dt30,
        (case when date_format(in_time,'yyyy-MM-dd') >= date_sub('${hivevar:param_time}',59) then 1 end) dt60,
        (case when date_format(in_time,'yyyy-MM-dd') >= date_sub('${hivevar:param_time}',89) then 1 end) dt90,
         
       -- 当前session开始访问外卖平台的时间在哪个时段
        (case when hour(in_time) between 0 and 5 then 1 end) hr025,
        (case when hour(in_time) between 6 and 7 then 1 end ) hr627,
        (case when hour(in_time) between 8 and 9 then 1 end ) hr829,
        (case when hour(in_time) between 10 and 11 then 1 end ) hr10211,
        (case when hour(in_time) between 12 and 13 then 1 end ) hr12213,
        (case when hour(in_time) between 14 and 16 then 1 end ) hr14216,
        (case when hour(in_time) between 17 and 19 then 1 end ) hr17219,
        (case when hour(in_time) between 18 and 19 then 1 end ) hr18219,
        (case when hour(in_time) between 20 and 21 then 1 end ) hr20221,
        (case when hour(in_time) between 22 and 23 then 1 end ) hr22223,
        
        in_time,
        out_time,
        stay_time,
        pv
       from bap_dwd.dwd_user_pc_pv 
       where dt =${hivevar:param_dt}
    )  p
             group by user_id
  ) pc  on uw.user_id = pc.user_id 
left join (
  -- pc端近30天的访问数据
  select 
    user_id,
    
    count( 
      case 
        when type='visit_ip' 
        then content 
      end) month1_pc_diff_ip_cnt, --近30天访问使用的不同ip数量

    -- 根据user_id来分组，将多条记录聚合成一条
    max(
      case 
        when rn=1 
          and type='visit_ip'
        then content
      end) month1_pc_common_ip, --近30天最常用的ip
    
    count(
      case 
         when type = 'cookie_id'
         then content
      end) month1_pc_diff_cookie_cnt, --近30天使用的cookie的数量
   
   
    max(case 
          when rn=1
             and type='cookie_id'
          then content
       end) month1_pc_common_cookie, --近30使用最常用的cookie_id
   
    max(case
          when rn=1
             and type='browser_name'
          then content
       end) month1_pc_common_browser_name,--近30使用最常用的browser_name

    max(
      case 
        when rn=1
          and type='visit_os'
        then content
      end) month1_pc_common_os -- 近30天使用最常用系统

    from bap_dws.dws_user_visit_month1
    group by user_id
) pc_month1 on us.user_id = pc_month1.user_id
left join(
  --app端指标
  select 
    user_id,
    max(case when rn_desc = 1 then log_time end) latest_app_visit_date , -- 最近一次访问的日期
    max(case when rn_desc=1 then app_name  end) latest_app_name,-- 最近一次访问的app的名称
    max(case when rn_desc=1 then visit_os end) latest_app_visit_os, -- 最近一次访问的app的os
    max(case when rn_desc=1 then visit_ip end) latest_app_visit_ip,-- 最近一次访问的ip
    max(case when rn_desc=1 then city end) latest_app_city, -- 最近一次访问的城市
    max(case when rn_desc=1 then province end) latest_app_province, -- 最近一次访问的省份
    max(case when rn_asc=1 then log_time end ) first_app_visit_date, -- 第一次访问的日期
    max(case when rn_asc=1 then app_name end) first_app_name,-- 第一次访问的app的名称
    max(case when rn_asc=1 then visit_os end) first_app_visit_os,-- 第一次访问的app的os
    max(case when rn_asc=1 then visit_ip end) first_app_visit_ip,-- 第一次访问的ip
    max(case when rn_asc=1 then city end) first_app_city,-- 第一次访问的城市
    max(case when rn_asc=1 then province end) first_app_province,-- 第一次访问的省份
    
    sum(app_dt7)  day7_app_cnt,-- app 近7天访问pv数
    sum(app_dt15) day15_app_cnt, -- app 近15天访问pv数	 
    sum(app_dt30) month1_app_cnt, -- app 近30天的访问pv数
    sum(app_dt60) month2_app_cnt, -- app近60天的访问pv数
    sum(app_dt90) month3_app_cnt, -- app近90天的访问pv数
    
    sum(case when app_dt30 =1 then app_hr_025 end) month1_app_hour025_cnt, -- app近30天0到5点的访问pv数
    sum(case when app_dt30 =1 then app_hr_627 end) month1_app_hour627_cnt,-- app近30天的6到7点的访问pv数
    sum(case when app_dt30 =1 then app_hr_829 end) month1_app_hour829_cnt, --app近30天8到9的访问pv数
    sum(case when app_dt30 =1 then app_hr_10211 end) month1_app_hour10211_cnt,-- app近30天10到11访问pv数
    sum(case when app_dt30 =1 then app_hr_12213 end) month1_app_hour12213_cnt, -- app近30天12到13点的访问pv数
    sum(case when app_dt30 =1 then app_hr_14215 end) month1_app_hour14215_cnt  , -- app近30天14到15点的访问pv数
    sum(case when app_dt30 =1 then app_hr_16217 end) month1_app_hour16217_cnt  , -- app近30天16到17点的访问pv数
    sum(case when app_dt30 =1 then app_hr_18219 end) month1_app_hour18219_cnt  , -- app近30天18到19点的访问pv数
    sum(case when app_dt30 =1 then app_hr_20221 end) month1_app_hour20221_cnt  , -- app近30天20到21点的访问pv数
    sum(case when app_dt30 =1 then app_hr_22223 end) month1_app_hour22223_cnt   -- app近30天22到23点的访问pv数
  from (
    select 
      user_id ,
      log_time ,
      log_hour ,
      imei ,
      visit_os ,
      os_version ,
      app_name   ,
      app_version,
      device_token,
      visit_ip,
      province,
      city,
      
      row_number() over(distribute by user_id sort by  log_time asc) rn_asc,
      row_number() over(distribute by user_id sort by  log_time desc) rn_desc,
      
      (case when date_format(log_time,'yyyy-MM-dd')>=date_sub('${hivevar:param_time}',6) then 1 end) app_dt7,
      (case when date_format(log_time,'yyyy-MM-dd')>=date_sub('${hivevar:param_time}',14) then 1 end) app_dt15,
      (case when date_format(log_time,'yyyy-MM-dd')>=date_sub('${hivevar:param_time}',29) then 1 end) app_dt30,
      (case when date_format(log_time,'yyyy-MM-dd')>=date_sub('${hivevar:param_time}',59) then 1 end) app_dt60,
      (case when date_format(log_time,'yyyy-MM-dd')>=date_sub('${hivevar:param_time}',89) then 1 end) app_dt90,
      
      (case when hour(log_time) between 0 and 5 then 1 end) app_hr_025,
      (case when hour(log_time) between 6 and 7 then 1 end) app_hr_627,
      (case when hour(log_time) between 8 and 9 then 1 end) app_hr_829,
      (case when hour(log_time) between 10 and 11 then 1 end) app_hr_10211,
      (case when hour(log_time) between 12 and 13 then 1 end) app_hr_12213,
      (case when hour(log_time) between 14 and 15 then 1 end) app_hr_14215,
      (case when hour(log_time) between 16 and 17 then 1 end) app_hr_16217,
      (case when hour(log_time) between 18 and 19 then 1 end) app_hr_18219,
      (case when hour(log_time) between 20 and 21 then 1 end) app_hr_20221,
      (case when hour(log_time) between 22 and 23 then 1 end) app_hr_22223
    from bap_dwd.dwd_user_app_pv 
    where dt =${hivevar:param_dt}) p
  group by user_id
) app  on  uw.user_id = app.user_id
where (latest_pc_visit_date is not null or latest_app_visit_date is not null);