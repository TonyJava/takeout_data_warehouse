-- 若是hive中存在名为bap_ods 的db，将其删除
drop database if exists bap_ods CASCADE;

-- hive 建库
create database if not exists bap_ods;

use bap_ods;

CREATE EXTERNAL TABLE bap_ods.ods_biz_trade (
  trade_id bigint     ,
  order_id bigint   ,
  user_id bigint   ,
  amount decimal(18,2)  ,
  trade_type tinyint  ,
  trade_time string
) 
partitioned by (dt string)
location '/bap/ods/ods_biz_trade' ;


CREATE EXTERNAL TABLE bap_ods.ods_cart (
  cart_id bigint     ,
  session_id string  ,
  user_id bigint   ,
  goods_id bigint   ,
  goods_num int   ,
  add_time string  ,
  cancle_time string  ,
  sumbit_time string  ,
  create_date string
)  
partitioned by (dt string)
location '/bap/ods/ods_cart';

CREATE EXTERNAL TABLE bap_ods.ods_code_category (
  first_category_id int   ,
  first_category_name string  ,
  second_category_id int   ,
  second_catery_name string  ,
  third_category_id int   ,
  third_category_name string  ,
  category_id int     
) 
location '/bap/ods/ods_code_category';



CREATE EXTERNAL TABLE bap_ods.ods_order_delivery (
  order_id bigint   ,
  order_no string  ,
  consignee string  ,
  area_id bigint   ,
  area_name string  ,
  address string  ,
  mobile bigint   ,
  phone string  ,
  coupon_id bigint   ,
  coupon_money decimal(18,2)  ,
  carriage_money decimal(18,2)  ,
  create_time string  ,
  update_time string  ,
  addr_id bigint   
) 
partitioned by (dt string)
location '/bap/ods/ods_order_delivery/';


CREATE EXTERNAL TABLE bap_ods.ods_order_item (
  user_id bigint   ,
  order_id bigint   ,
  order_no string  ,
  goods_id bigint   ,
  goods_no string  ,
  goods_name string  ,
  goods_amount int   ,
  shop_id bigint   ,
  shop_name string  ,
  curr_price decimal(18,2)  ,
  market_price decimal(18,2)  ,
  discount decimal(18,2)  ,
  cost_price decimal(18,2)  ,
  first_cart bigint   ,
  first_cart_name string  ,
  second_cart bigint   ,
  second_cart_name string  ,
  third_cart bigint   ,
  third_cart_name string  ,
  goods_desc string  
)  
partitioned by (dt string)
location '/bap/ods/ods_order_item';



CREATE EXTERNAL TABLE bap_ods.ods_us_order (
  order_id bigint     ,
  order_no string  ,
  order_date string  ,
  user_id bigint   ,
  user_name string  ,
  order_money decimal(18,2)  ,
  order_type int   ,
  order_status int   ,
  pay_status int   ,
  pay_type int   ,
  order_source string  ,
  update_time string  
)
partitioned by (dt string)
location '/bap/ods/ods_us_order';


CREATE EXTERNAL TABLE bap_ods.ods_user (
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
  create_date string   
) 
location '/bap/ods/ods_user';

CREATE EXTERNAL TABLE bap_ods.ods_user_addr (
  user_id bigint   ,
  order_addr string  ,
  user_order_flag tinyint  ,
  addr_id bigint     ,
  arear_id int   
)
location '/bap/ods/ods_user_addr' ;


CREATE EXTERNAL TABLE bap_ods.ods_user_app_click_log (
  log_id bigint     ,
  user_id bigint   ,
  imei string  ,
  log_time string  ,
  visit_os string  ,
  os_version string  ,
  app_name string  ,
  app_version string  ,
  device_token string  ,
  visit_ip string  ,
  province string  ,
  city string  
) 
partitioned by (dt string)
location '/bap/ods/ods_user_app_click_log';


CREATE EXTERNAL TABLE bap_ods.ods_user_extend (
  user_id bigint   ,
  user_gender bigint   ,
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
  height int   
)  
location '/bap/ods/ods_user_extend';


CREATE EXTERNAL TABLE bap_ods.ods_user_pc_click_log (
  log_id bigint     ,
  user_id bigint   ,
  session_id string  ,
  cookie_id string  ,
  visit_time string  ,
  visit_url string  ,
  visit_os string  ,
  browser_name string  ,
  visit_ip string  ,
  province string  ,
  city string  ,
  page_id int   ,
  goods_id bigint   ,
  shop_id bigint   
)
partitioned by (dt string)
location '/bap/ods/ods_user_pc_click_log';

-- 下述的码表，供后续分析指标之用

CREATE EXTERNAL TABLE bap_ods.ods_code_city (
  `id` bigint,
  `city` string,
  `province` string
) location '/bap/ods/ods_code_city';


CREATE EXTERNAL TABLE bap_ods.ods_code_education (
  `id` bigint,
  `edu_name` string
) location '/bap/ods/ods_code_education';

CREATE EXTERNAL TABLE bap_ods.ods_code_email_suffix(
  `id` bigint,
  `suffix` string,
  `op_mail` string
) location '/bap/ods/ods_code_email_suffix';

CREATE EXTERNAL TABLE bap_ods.ods_code_goods (
  `first_category_id` bigint,
  `first_category_name` string,
  `second_category_id` bigint,
  `second_catery_name` string,
  `third_category_id` bigint,
  `third_category_name` string,
  `goods_id` bigint,
  `goods_name` string,
  `goods_no` bigint,
  `seller_id` bigint,
  `seller_name` string,
  `food_price` DECIMAL(18,2)
) location '/bap/ods/ods_code_goods';

CREATE EXTERNAL TABLE bap_ods.ods_code_profession (
  `id` bigint,
  `pro_name` string
) location '/bap/ods/ods_code_profession';

CREATE EXTERNAL TABLE bap_ods.ods_code_shop (
  `seller_id` bigint,
  `seller_name` string,
  `category_id` bigint
) location '/bap/ods/ods_code_shop';


