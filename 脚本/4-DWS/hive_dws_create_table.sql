drop database if exists bap_dws cascade;
create database bap_dws;
drop table if exists bap_dws.dws_user_visit_month1;
create  external  table bap_dws.dws_user_visit_month1
(
   user_id              bigint ,
   type                 string,
   content              string,
   cnt                  bigint,
   rn                   bigint,-- 分组后的level
   dw_date              string
)
partitioned by (dt string)
location '/bap/dws/dws_user_visit_month1';

-- 用户宽表
create  external table bap_dws.dw_user_basic
(
  -- 用户信息表中的字段
  user_id bigint     ,
  user_name string  ,
  user_gender tinyint  ,
  user_birthday string  ,
  user_age int   ,
  constellation string  ,
  province string  ,
  city string  ,
  city_level tinyint  ,
  e_mail string  ,
  op_mail string  ,
  mobile bigint   ,
  num_seg_mobile int   ,
  op_Mobile string  ,
  register_time string  ,
  login_ip string  ,
  login_source string  ,
  request_user string  ,
  total_score decimal(18,2)  ,
  used_score decimal(18,2)  ,
  is_blacklist tinyint  ,
  is_married tinyint  ,
  education string  ,
  monthly_income decimal(18,2) ,
  profession string  ,
  
    -- 用户扩展信息表中的字段
  is_pregnant_woman tinyint  ,
  is_have_children tinyint  ,
  is_have_car tinyint  ,
  phone_brand string  ,
  phone_brand_level string  ,
  phone_cnt int   ,
  change_phone_cnt int   ,
  is_maja tinyint  ,
  majia_account_cnt int   ,
  loyal_model string  ,
  shopping_type_model string  ,
  weight int   ,
  height int   ,
  
  dw_date string  
)
location '/bap/dws/dw_user_basic';

