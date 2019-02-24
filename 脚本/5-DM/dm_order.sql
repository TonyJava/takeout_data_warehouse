
-- 统计order的recent的dm表：
drop table bap_dm.dm_order_recent;
create table if not exists bap_dm.dm_order_recent(
userid bigint,
first_order_date string,
last_order_date string,
first_order_diff int,
last_order_diff int,
dt30rr_cnt int,
dt60rr_cnt int,
dt90rr_cnt int,
amount_dt30rr_cnt int,
amount_dt60rr_cnt int,
amount_dt90rr_cnt int,
dt30_cnt int,
dt60_cnt int,
dt90_cnt int,
amount_dt30_cnt int,
amount_dt60_cnt int,
amount_dt90_cnt int,
min_order_money int,
max_order_money int,
user_price_dt90 int
)
partitioned by(dt string)
;

-- 聚合求近多少天数据
from(
  select
    user_id,
    min((case when first_order_rn = 1 then order_date end)) first_order_date,--首次下单时间
    max((case when last_order_rn = 1 then order_date end)) last_order_date,--最后下单时间
    datediff("2018-12-26",min((case when first_order_rn = 1 then order_date end))) first_order_diff,--首单距今时间
    datediff("2018-12-26",max((case when last_order_rn = 1 then order_date end))) last_order_diff,--尾单距今时间
    count(case when dt30rr = 1 then 1 end) dt30rr_cnt,
    count(case when dt60rr = 1 then 1 end) dt60rr_cnt,
    count(case when dt90rr = 1 then 1 end) dt90rr_cnt,
    sum(case when amount_dt30rr != 0 then amount_dt30rr end) amount_dt30rr_cnt,
    sum(case when amount_dt60rr != 0 then amount_dt60rr end) amount_dt60rr_cnt,
    sum(case when amount_dt90rr != 0 then amount_dt90rr end) amount_dt90rr_cnt,
    count((case when dt30 = 1 then 1 end)) dt30_cnt,
    count((case when dt60 = 1 then 1 end)) dt60_cnt,
    count((case when dt90 = 1 then 1 end)) dt90_cnt,
    sum(case when amount_dt30 != 0 then amount_dt30rr end) amount_dt30_cnt,
    sum(case when amount_dt60 != 0 then amount_dt60rr end) amount_dt60_cnt,
    sum(case when amount_dt90 != 0 then amount_dt90rr end) amount_dt90_cnt,
    min(order_money) min_order_money,
    max(order_money) max_order_money,
    round(sum(case when amount_dt90rr != 0 then amount_dt90rr end)/count(case when dt90rr = 1 then 1 end),3) user_price_dt90
  from(
    select
      do.user_id user_id,
      do.order_date order_date,
      row_number() over(partition by do.user_id order by unix_timestamp(do.order_date,"yyyy-MM-dd hh:mm:ss") asc) first_order_rn, --第一次下单时间
      row_number() over(partition by do.user_id order by unix_timestamp(do.order_date,"yyyy-MM-dd hh:mm:ss") desc) last_order_rn, --最后一次下单
      (case when do.intime >= date_sub('2018-12-26',29) then 1 end) dt30rr,--含退拒 rr:retreate reject
      (case when do.intime >= date_sub('2018-12-26',59) then 1 end) dt60rr,--含退拒
      (case when do.intime >= date_sub('2018-12-26',89) then 1 end) dt90rr,--含退拒
      (case when do.intime >= date_sub('2018-12-26',29) then do.order_money else 0 end) amount_dt30rr,--含退拒
      (case when do.intime >= date_sub('2018-12-26',59) then do.order_money else 0 end) amount_dt60rr,--含退拒
      (case when do.intime >= date_sub('2018-12-26',89) then do.order_money else 0 end) amount_dt90rr,
      (case when do.intime >= date_sub('2018-12-26',29) and do.trade_type = 1 then 1 end) dt30,--不含退拒 trade_type:1 成功付款，没有退和拒
      (case when do.intime >= date_sub('2018-12-26',59) and do.trade_type = 1 then 1 end) dt60,--不含退拒
      (case when do.intime >= date_sub('2018-12-26',89) and do.trade_type = 1 then 1 end) dt90,--不含退拒
      (case when do.intime >= date_sub('2018-12-26',29) and do.trade_type = 1 then do.order_money else 0 end) amount_dt30,--不含退拒
      (case when do.intime >= date_sub('2018-12-26',59) and do.trade_type = 1 then do.order_money else 0 end) amount_dt60,--不含退拒
      (case when do.intime >= date_sub('2018-12-26',89) and do.trade_type = 1 then do.order_money else 0 end) amount_dt90,
      do.addr_id addr_id, --收货地址id
      do.pay_type pay_type, --支付类型
      do.order_money order_money
    from bap_dwd.dwd_order do
    where do.dt>=date_sub('2018-12-26',89)
    and do.dt<='2018-12-26'
  ) tmp
  group by user_id
) tmp1
insert into bap_dm.dm_order_recent partition(dt="?")
select *;


-- 求非近期的最终结果数据的bap_dm.dm_order_no_recent
drop table bap_dm.dm_order_no_recent;
create table if not exists bap_dm.dm_order_no_recent(
userid bigint,
paytype string, --当成int类型所以可以sum
addrid string,
no_rr_order_id_cnt int,
no_rr_order_id_sum int,
user_order_price float
)
partitioned by(dt string)
;


-- 导出到bap_dm.dm_order_no_recent的结果
from(
  select
    user_id user_id,
    pay_type pay_type,
    0 addr_id,
    0 no_rr_order_id_cnt,
    0 no_rr_order_id_sum,
    0 user_order_price
  from(
    select
      user_id,
      pay_type,
      row_number() over(partition by user_id order by pay_type_cnt desc) rn_desc
    from(
      select
        oo.user_id user_id,
        oo.pay_type pay_type,
        count(oo.pay_type) pay_type_cnt
      from bap_dwd.dwd_order oo
      where oo.dt = "2018-12-26"
      group by oo.user_id,oo.pay_type
    ) tmp
    group by user_id,pay_type,pay_type_cnt
  ) tmp1
  where rn_desc = 1

  union all
  select
    user_id user_id,
    0 pay_type,
    addr_id addr_id,
    0 no_rr_order_id_cnt,
    0 no_rr_order_id_sum,
    0 user_order_price
  from(
    select
      user_id,
      addr_id,
      row_number() over(partition by user_id order by addr_id_cnt desc) rn_desc
    from(
      select
        oo.user_id user_id,
        oo. addr_id addr_id,
        count(oo.addr_id) addr_id_cnt
      from bap_dwd.dwd_order oo
      where oo.dt = "2018-12-26"
      group by oo.user_id,oo.addr_id
    ) tmp
    group by user_id,addr_id,addr_id_cnt
  ) tmp1
  where rn_desc = 1


  union all

  select
  user_id user_id,
  0 pay_type,
  0 addr_id,
  (tmp2.no_rr_order_id_cnt + tmp3.no_rr_order_id_cnt) no_rr_order_id_cnt,
  (tmp2.no_rr_order_id_sum + tmp3.no_rr_order_id_sum) no_rr_order_id_sum,
  tmp2.user_order_price
  from
  (
  SELECT
  user_id user_id,
  0 pay_type,
  0 addr_id,
  count(case when no_rr_order_id = 1 then 1 end) no_rr_order_id_cnt,
  sum(case when no_rr_order_money != 0 then no_rr_order_money end) no_rr_order_id_sum,
  sum(order_money)/count(order_id) user_order_price
  from(
  SELECT
  do.user_id user_id,
  (case WHEN do.trade_type = 1 then 1 end) no_rr_order_id,
  (case WHEN do.trade_type = 1 then do.order_money ELSE 0 end) no_rr_order_money,
  do.order_id order_id,
  do.order_money order_money
  FROM bap_dwd.dwd_order do
  WHERE do.order_id IS NOT NULL
  and do.dt  = "2018-12-26"
  ) tmp1
  group by user_id

  ) tmp2
  left join
  (
  select
  dwso.userid,
  dwso.no_rr_order_id_cnt,
  dwso.no_rr_order_id_sum
  from bap_dm.dm_order_no_recent dwso
  where dwso.dt = "2018-12-25"
  ) tmp3
  on tmp2.user_id = tmp3.userid

) tmp4
insert into bap_dm.dm_order_no_recent partition(dt="2018-12-26")
select
user_id,
sum(pay_type) pay_type, --当成int类型所以可以sum
sum(addr_id) addr_id,
sum(no_rr_order_id_cnt) no_rr_order_id_cnt,
sum(no_rr_order_id_sum) no_rr_order_id_sum,
sum(user_order_price) user_order_price
group by user_id
;


-- 统计下单分布的结果表
create table if not exists bap_dm.dm_order_range(
  user_id bigint,
  school_order int,
  company_order int,
  home_order int,
  am0_8_order int,
  am9_12_order int,
  am13_15_order int,
  am16_20_order int,
  am21_24_order int
)
partitioned by(dt string)
;


-- 统计的下单分布
from(
SELECT
do.user_id,
do.order_id,
do.order_date,
(case WHEN do.user_order_flag = 1 then 1 end) school_order,
(case WHEN do.user_order_flag = 2 then 1 end) company_order,
(case WHEN do.user_order_flag = 3 then 1 end) home_order,
(case WHEN hour(do.order_date) between 0 and 5  then 1 end) am0_5_order,
(case WHEN hour(do.order_date) between 6 and 12  then 1 end) am6_12_order,
(case WHEN hour(do.order_date) between 13 and 15  then 1 end) am13_15_order,
(case WHEN hour(do.order_date) between 16 and 20  then 1 end) am16_20_order,
(case WHEN hour(do.order_date) between 21 and 24  then 1 end) am21_24_order
from dwd_order do
where do.dt = "2018-12-26"
) tmp
insert into bap_dm.dm_order_range partition(dt="2018-12-26")
SELECT
user_id,
count(case WHEN school_order = 1 then 1 end) school_order_cnt,
count(case WHEN company_order = 1 then 1 end) company_order_cnt,
count(case WHEN home_order = 1 then 1 end) home_order_cnt,
count(case WHEN am0_5_order = 1 then 1 end) am0_5_order_cnt,
count(case WHEN am6_12_order = 1 then 1 end) am6_12_order_cnt,
count(case WHEN am13_15_order = 1 then 1 end) am13_15_order_cnt,
count(case WHEN am16_20_order = 1 then 1 end) am16_20_order_cnt,
count(case WHEN am21_24_order = 1 then 1 end) am21_24_order_cnt
GROUP BY user_id
;





-- 统计购物车中近30天的指标


-- 统计购物车中非近30天指标
