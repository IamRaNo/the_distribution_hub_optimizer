

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


select 
state,