CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE superstore_raw (
row_id TEXT,
order_id TEXT,
order_date TEXT,
ship_date TEXT,
ship_mode TEXT,
customer_id TEXT,
customer_name TEXT,
segment TEXT,
country TEXT,
city TEXT,
state TEXT,
postal_code TEXT,
region TEXT,
product_id TEXT,
category TEXT,
sub_category TEXT,
product_name TEXT,
sales TEXT,
quantity TEXT,
discount TEXT,
profit TEXT
);
DROP TABLE IF EXISTS superstore_raw;
CREATE TABLE superstore_raw (
row_id TEXT,
order_id TEXT,
order_date TEXT,
ship_date TEXT,
ship_mode TEXT,
customer_id TEXT,
customer_name TEXT,
segment TEXT,
country TEXT,
city TEXT,
state TEXT,
postal_code TEXT,
region TEXT,
product_id TEXT,
category TEXT,
sub_category TEXT,
product_name TEXT,
sales TEXT,
quantity TEXT,
discount TEXT,
profit TEXT
);
# CREATING A DUPLICATE TABLE TO DO ALL THE CLEANING 

create table superstore_sales 
as select * from 
superstore_raw;

# CHECKING FOR THE NEW TABLE
select * from superstore_sales;

# CHECKING FOR DUPLICATES
select
row_id,
order_id,
order_date,
ship_date,
ship_mode,
customer_id,
customer_name,
segment,
country,
city,
state,
postal_code,
region,
product_id,
category,
sub_category,
product_name,
sales,
quantity,
discount,
profit,
count(*) as duplicate_count
from superstore_sales
group by 
row_id,
order_id,
order_date,
ship_date,
ship_mode,
customer_id,
customer_name,
segment,
country,
city,
state,
postal_code,
region,
product_id,
category,
sub_category,
product_name,
sales,
quantity,
discount,
profit
having count(*)>1;

set sql_safe_updates=0;

#CHANGING DATA TYPES 
#(row_id)
alter table superstore_sales
modify row_id int;

#(order_date)
update superstore_sales
set order_date =
case
    when  order_date like '%/%/%' then str_to_date(order_date, '%m/%d/%Y')
    when order_date like '____-__-__' then str_to_date(order_date , '%Y-%m-%d')
    when order_date like '__-__-____' then str_to_date(order_date , '%d-%m-%Y')
    else null
end;   

#(ship_date)
update superstore_sales
set ship_date =
case
     when ship_date like '%/%/%' then  STR_TO_DATE(ship_date,'%m/%d/%Y')
     when ship_date like '____-__-__' then STR_TO_DATE(ship_date,'%Y-%m-%d')
	 when ship_date like '__-__-____' then STR_TO_DATE(ship_date,'%d-%m-%Y')
	 else null
end; 

alter table superstore_sales
modify order_date date,
modify ship_date date ;

# CLEANING AND REMOVING WHITE SPACES FROM NUMERIC COLUMNS AND THEN CHANGING DATATYPES
update superstore_sales
set 
sales= trim(sales),
quantity= trim(quantity),
discount= trim(discount),
profit = trim(profit);

alter table superstore_sales
modify sales decimal(10,2),
modify  quantity int,
modify discount decimal(4,2),
modify  profit decimal(10,2);

UPDATE superstore_sales
SET 
sales = REPLACE(TRIM(sales), ',', ''),
quantity = TRIM(quantity),
discount = TRIM(discount),
profit = REPLACE(TRIM(profit), ',', '');

UPDATE superstore_sales
SET sales = NULL WHERE sales = '';

UPDATE superstore_sales
SET quantity = NULL WHERE quantity = '';

UPDATE superstore_sales
SET discount = NULL WHERE discount = '';

UPDATE superstore_sales
SET profit = NULL WHERE profit = '';

ALTER TABLE superstore_sales
MODIFY sales DECIMAL(10,2),
MODIFY quantity INT,
MODIFY discount DECIMAL(4,2),
MODIFY profit DECIMAL(10,2);

SELECT sales
FROM superstore_sales
WHERE sales NOT REGEXP '^[0-9.]+$';

SELECT *
FROM superstore_sales
LIMIT 5;
SELECT sales
FROM superstore_sales
WHERE sales NOT REGEXP '^[0-9.]+$';

UPDATE superstore_sales
SET sales = NULL
WHERE sales NOT REGEXP '^[0-9.]+$';

UPDATE superstore_sales
SET quantity = NULL
WHERE quantity NOT REGEXP '^[0-9]+$';

UPDATE superstore_sales
SET discount = NULL
WHERE discount NOT REGEXP '^[0-9.]+$';

UPDATE superstore_sales
SET profit = NULL
WHERE profit NOT REGEXP '^-?[0-9.]+$';

ALTER TABLE superstore_sales
MODIFY sales DECIMAL(10,2),
MODIFY quantity INT,
MODIFY discount DECIMAL(4,2),
MODIFY profit DECIMAL(10,2);

SELECT discount
FROM superstore_sales
WHERE discount > 1;
SELECT discount
FROM superstore_sales
WHERE discount NOT REGEXP '^[0-9.]+$';

UPDATE superstore_sales
SET discount = NULL
WHERE discount > 1;

ALTER TABLE superstore_sales
MODIFY sales DECIMAL(10,2),
MODIFY quantity INT,
MODIFY discount DECIMAL(5,2),
MODIFY profit DECIMAL(10,2);

SELECT sales, profit, discount
FROM superstore_sales
LIMIT 20;

SELECT *
FROM superstore_sales
WHERE sales IS NULL 
   OR profit IS NULL;
   
   DELETE FROM superstore_sales
WHERE sales IS NULL 
   OR profit IS NULL;
   
   select * from superstore_sales;