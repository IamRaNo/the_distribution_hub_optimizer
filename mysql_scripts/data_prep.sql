

select * from bill_clean limit 5;


-- =========================================================================================================
-- Q1. How much will goods movement grow in each state over the next 2 years, relative to its economic size?
-- =========================================================================================================

-- Need:
-- 1. state, year and month as time frame , assets total all 3
-- 2. gsdp of the last month, to calculate gsdp growth with forecasting

-- --------------------------------------------
-- Q1 - Data Creation
-- --------------------------------------------


with total_asset as (
    select
        `state`,
        str_to_date(concat_ws('-', `year`, `month`, 1), '%Y-%m-%d') as `date`,
        round((`intra_asset(c)` + `out_asset(c)` + `in_asset(c)`),2) as `total_asset`
    from bill_clean
)
select * from total_asset;


select * from gsdp_clean limit 5;

select max(fy_start) from gsdp_clean;

select * from gsdp_clean where `gsdp(c)` is null;

select * from gsdp_clean;