-- 1、将多张表的数据汇聚到dw_order
create table if not exists bap_dwd.dwd_order(
order_id bigint,
user_id bigint,
order_source string,
order_date string,
order_money string,
pay_type string,
area_id bigint,
area_name string,
addr_id bigint,
user_order_flag string,
trade_amount float,
trade_type string,
trade_time string,
intime string
)
partitioned by(dt string)
;

--加载dwd_order中的数据到表中
from(
  select
    oo.order_id order_id,
    oo.user_id user_id,
    oo.order_source order_source,
    oo.order_date order_date,
    oo.order_money order_money,
    oo.pay_type pay_type,
    ood.area_id area_id,
    ood.area_name area_name,
    oua.addr_id addr_id,
    oua.user_order_flag user_order_flag,
    obt.amount trade_amount,
    obt.trade_type trade_type,
    obt.trade_time trade_time,
    date(order_date,"yyyy-MM-dd") intime
  from bap_ods.ods_order oo
  
  left join bap_ods.ods_order_delivery ood
    on oo.order_id = ood.order_id
    
  left join bap_ods.ods_user_addr oua
    on ood.addr_id = oua.addr_id
    
  left join bap_ods.ods_biz_trade obt
    on obt.order_id = oo.order_id
) tmp
insert into table bap_dwd.dwd_order partition(dt="2018-12-26")
select *
;


-- ======================================================购物车=====================
-- 2、将多张表的数据汇聚到dw_cart
create table if not exists bap_dwd.dwd_cart(
user_id bigint,
cart_id bigint,
session_id string,
goods_id bigint,
goods_num int,
add_time string,
cancle_time string,
sumbit_time string,
order_id bigint,
order_no string,
goods_no string,
goods_name string,
goods_amount int,
shop_id bigint,
shop_name string,
curr_price float,
market_price float,
discount float,
cost_price float,
first_cat bigint,
first_cat_name string,
second_cat bigint,
second_cat_name string,
third_cat bigint,
third_cat_name string,
goods_desc string
)
partitioned by(dt string)
;

--加载dwd_cart中的数据到表中
from(
SELECT
ooc.user_id,
ooc.cart_id,
ooc.session_id,
ooc.goods_id,
ooc.goods_num,
ooc.add_time,
ooc.cancle_time,
ooc.sumbit_time,
ooi.order_id,
ooi.order_no,
ooi.goods_no,
ooi.goods_name,
ooi.goods_amount,
ooi.shop_id,
ooi.shop_name,
ooi.curr_price,
ooi.market_price,
ooi.discount,
ooi.cost_price,
ooi.first_cat,
ooi.first_cat_name,
ooi.second_cat,
ooi.second_cat_name,
ooi.third_cat,
ooi.third_cat_name,
ooi.goods_desc
FROM bap_ods.ods_order_cart ooc
LEFT JOIN bap_ods.ods_order_item ooi
on ooc.goods_id = ooi.goods_id
WHERE ooc.dt = "2018-12-26"
) tmp
insert into bap_dwd.dwd_cart partition(dt="2018-12-26")
select *
;
