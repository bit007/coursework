CREATE SCHEMA IF NOT EXISTS `assignment` ;

use `assignment`;

-----------------------------------------------------------------------------------------------
-- dropping tables if created already

drop table if exists assignment.`bajaj auto`;
drop table if exists assignment.`eicher motors`;
drop table if exists assignment.`hero motorcorp`;
drop table if exists assignment.`tcs`;
drop table if exists assignment.`infosys`;
drop table if exists assignment.`tvs motors`;

drop table if exists assignment.bajaj1;
drop table if exists assignment.eicher1;
drop table if exists assignment.hero1;
drop table if exists assignment.tcs1;
drop table if exists assignment.infosys1;
drop table if exists assignment.tvs1;

drop table if exists assignment.bajaj2;
drop table if exists assignment.eicher2;
drop table if exists assignment.hero2;
drop table if exists assignment.tcs2;
drop table if exists assignment.infosys2;
drop table if exists assignment.tvs2;

drop table if exists assignment.master;


-----------------------------------------------------------------------------------------------
-- Creating the tables from CSV file

CREATE TABLE assignment.`bajaj auto` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` text,
  `% Deli. Qty to Traded Qty` text,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);

-- Loading Data from CSV File
LOAD DATA INFILE 'D:\upgrad\\sql assignment\\Assignment\\Bajaj Auto.csv' INTO 
TABLE assignment.`bajaj auto` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'IGNORE 1 LINES;

-----------------------------------------------------------------------------------------------

-- Creating the tables from CSV file

CREATE TABLE assignment.`eicher motors` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` text,
  `% Deli. Qty to Traded Qty` text,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);

-- Loading Data from CSV File
LOAD DATA INFILE 'D:\upgrad\\sql assignment\\Assignment\\Eicher Motors.csv' INTO 
TABLE assignment.`eicher motors` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'IGNORE 1 LINES;

-----------------------------------------------------------------------------------------------


-- Creating the tables from CSV file
CREATE TABLE assignment.`hero motorcorp` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` text,
  `% Deli. Qty to Traded Qty` text,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);

-- Loading Data from CSV File
LOAD DATA INFILE 'D:\upgrad\\sql assignment\\Assignment\\Hero Motocorp.csv' INTO 
TABLE assignment.`hero motorcorp` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'IGNORE 1 LINES;

-----------------------------------------------------------------------------------------------

-- Creating the tables from CSV file
CREATE TABLE assignment.`tcs` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` text,
  `% Deli. Qty to Traded Qty` text,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);

-- Loading Data from CSV File
LOAD DATA INFILE 'D:\upgrad\\sql assignment\\Assignment\\TCS.csv' INTO 
TABLE assignment.`tcs` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'IGNORE 1 LINES;

-----------------------------------------------------------------------------------------------

-- Creating the tables from CSV file
CREATE TABLE assignment.`infosys` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` text,
  `% Deli. Qty to Traded Qty` text,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);

-- Loading Data from CSV File
LOAD DATA INFILE 'D:\upgrad\\sql assignment\\Assignment\\Infosys.csv' INTO 
TABLE assignment.`infosys` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'IGNORE 1 LINES;

-----------------------------------------------------------------------------------------------

-- Creating the tables from CSV file
CREATE TABLE assignment.`tvs motors` (
  `Date` text,
  `Open Price` double DEFAULT NULL,
  `High Price` double DEFAULT NULL,
  `Low Price` double DEFAULT NULL,
  `Close Price` double DEFAULT NULL,
  `WAP` double DEFAULT NULL,
  `No.of Shares` int(11) DEFAULT NULL,
  `No. of Trades` int(11) DEFAULT NULL,
  `Total Turnover (Rs.)` double DEFAULT NULL,
  `Deliverable Quantity` text,
  `% Deli. Qty to Traded Qty` text,
  `Spread High-Low` double DEFAULT NULL,
  `Spread Close-Open` double DEFAULT NULL
);

-- Loading Data from CSV File
LOAD DATA INFILE 'D:\upgrad\\sql assignment\\Assignment\\TVS Motors.csv' INTO 
TABLE assignment.`tvs motors` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'IGNORE 1 LINES;


-----------------------------------------------------------------------------------------------

-- Changing the date column datatype
-- First changing it to proper date format than doing alter table to change the sting to date format.

UPDATE assignment.`bajaj auto` SET `date` = STR_TO_DATE(`date`, '%d-%M-%Y');
ALTER TABLE assignment.`bajaj auto` MODIFY COLUMN `Date` date;

UPDATE assignment.`eicher motors` SET `date` = STR_TO_DATE(`date`, '%d-%M-%Y');
ALTER TABLE assignment.`eicher motors` MODIFY COLUMN `Date` date;

UPDATE assignment.`hero motorcorp` SET `date` = STR_TO_DATE(`date`, '%d-%M-%Y');
ALTER TABLE assignment.`hero motorcorp` MODIFY COLUMN `Date` date;

UPDATE assignment.`infosys` SET `date` = STR_TO_DATE(`date`, '%d-%M-%Y');
ALTER TABLE assignment.`infosys` MODIFY COLUMN `Date` date;

UPDATE assignment.`tcs` SET `date` = STR_TO_DATE(`date`, '%d-%M-%Y');
ALTER TABLE assignment.`tcs` MODIFY COLUMN `Date` date;

UPDATE assignment.`tvs motors` SET `date` = STR_TO_DATE(`date`, '%d-%M-%Y');
ALTER TABLE assignment.`tvs motors` MODIFY COLUMN `Date` date;




-----------------------------------------------------------------------------------------------

-- Creating Moving Average table by populating values for all days. For less than 20 days and 50 days it will be ignored later while generating the signal.
create table assignment.bajaj1 (PRIMARY KEY (`date`)) as select
`date`,
`Close Price`,
AVG(`Close Price`) OVER (ORDER BY `date` ASC ROWS 19 PRECEDING) as `20 Day MA`,
AVG(`Close Price`) OVER (ORDER BY `date` ASC ROWS 49 PRECEDING) as `50 Day MA`
from assignment.`bajaj auto`;

-----------------------------------------------------------------------------------------------

-- Creating Moving Average table by populating values for all days. For less than 20 days and 50 days it will be ignored later while generating the signal.
create table assignment.eicher1 (PRIMARY KEY (`date`)) as select
`Date`,
`Close Price`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) as `20 Day MA`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) as `50 Day MA`
from assignment.`eicher motors`;

-----------------------------------------------------------------------------------------------

-- Creating Moving Average table by populating values for all days. For less than 20 days and 50 days it will be ignored later while generating the signal.
create table assignment.hero1 (PRIMARY KEY (`date`)) as select
`Date`,
`Close Price`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) as `20 Day MA`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) as `50 Day MA`
from assignment.`hero motorcorp`;

-----------------------------------------------------------------------------------------------

-- Creating Moving Average table by populating values for all days. For less than 20 days and 50 days it will be ignored later while generating the signal.
create table assignment.infosys1 (PRIMARY KEY (`date`)) as select
`Date`,
`Close Price`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) as `20 Day MA`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) as `50 Day MA`
from assignment.`infosys`;


-----------------------------------------------------------------------------------------------

-- Creating Moving Average table by populating values for all days. For less than 20 days and 50 days it will be ignored later while generating the signal. 
create table assignment.tcs1 (PRIMARY KEY (`date`)) as select
`Date`,
`Close Price`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) as `20 Day MA`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) as `50 Day MA`
from assignment.`tcs`;


-----------------------------------------------------------------------------------------------

-- Creating Moving Average table by populating values for all days. For less than 20 days and 50 days it will be ignored later while generating the signal.
create table assignment.tvs1 (PRIMARY KEY (`date`)) as select
`Date`,
`Close Price`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) as `20 Day MA`,
AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) as `50 Day MA`
from assignment.`tvs motors`;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Creating master table from all tables using inner join as all tables have same number of rows based on date range.
-- Joined on date as we from data we can infer that all tables have date as unique identifier.

create table assignment.`master` as select
bajaj1.`Date`,
bajaj1.`Close Price` as Bajaj,
tcs1.`Close Price` as TCS,
tvs1.`Close Price` as TVS,
infosys1.`Close Price` as Infosys,
eicher1.`Close Price` as Eicher,
hero1.`Close Price` as Hero
from assignment.bajaj1 
join assignment.eicher1 on bajaj1.`Date` = eicher1.`Date`
join assignment.hero1 on bajaj1.`Date` = hero1.`Date`
join assignment.infosys1 on bajaj1.`Date` = infosys1.`Date`
join assignment.tcs1 on bajaj1.`Date` = tcs1.`Date`
join assignment.tvs1 on bajaj1.`Date` = tvs1.`Date`;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Creating Signal table based on when moving average cross each other. This is implemented using LAG(). LAG() gets the previous row value for difference of moving average.
-- and we can calculate the current row difference taking simple difference. So, both values should have a differnce in sign i.e. LAG() < 0 and current row diff > 0 or vice versa.
-- Only in above conditions generate a sign. For values where no moving average is available we are setting value as NULL. 

-----------------------------------------------------------------------------------------------
create table assignment.bajaj2 as select
`Date`, `Close Price`, 
CASE	
	WHEN RowNumber <=50 THEN null
	WHEN (`20 Day MA` > `50 Day MA`)  AND lag_20_50 < 0 THEN 'BUY'
	WHEN (`20 Day MA` < `50 Day MA`) AND lag_20_50 > 0 THEN 'SELL'
	ELSE 'HOLD'
END as `Signal`
from (select row_number() OVER (ORDER BY `Date` ASC) RowNumber,
`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`,
LAG((`20 Day MA`) - (`50 Day MA`),1) OVER (ORDER BY `DATE` ASC) lag_20_50
from assignment.bajaj1) a ;

-----------------------------------------------------------------------------------------------

create table assignment.eicher2 as select
`Date`, `Close Price`, 
CASE	
	WHEN RowNumber <=50 THEN null
	WHEN (`20 Day MA` > `50 Day MA`)  AND lag_20_50 < 0 THEN 'BUY'
	WHEN (`20 Day MA` < `50 Day MA`) AND lag_20_50 > 0 THEN 'SELL'
	ELSE 'HOLD'
END as `Signal`
from (select row_number() OVER (ORDER BY `Date` ASC) RowNumber,
`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`,
LAG((`20 Day MA`) - (`50 Day MA`),1) OVER (ORDER BY `DATE` ASC) lag_20_50
from assignment.eicher1) a ;

-----------------------------------------------------------------------------------------------

create table assignment.hero2 as select
`Date`, `Close Price`, 
CASE	
	WHEN RowNumber <=50 THEN null
	WHEN (`20 Day MA` > `50 Day MA`)  AND lag_20_50 < 0 THEN 'BUY'
	WHEN (`20 Day MA` < `50 Day MA`) AND lag_20_50 > 0 THEN 'SELL'
	ELSE 'HOLD'
END as `Signal`
from (select row_number() OVER (ORDER BY `Date` ASC) RowNumber,
`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`,
LAG((`20 Day MA`) - (`50 Day MA`),1) OVER (ORDER BY `DATE` ASC) lag_20_50
from assignment.hero1) a ;

-----------------------------------------------------------------------------------------------

create table assignment.infosys2 as select
`Date`, `Close Price`, 
CASE	
	WHEN RowNumber <=50 THEN null
	WHEN (`20 Day MA` > `50 Day MA`)  AND lag_20_50 < 0 THEN 'BUY'
	WHEN (`20 Day MA` < `50 Day MA`) AND lag_20_50 > 0 THEN 'SELL'
	ELSE 'HOLD'
END as `Signal`
from (select row_number() OVER (ORDER BY `Date` ASC) RowNumber,
`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`,
LAG((`20 Day MA`) - (`50 Day MA`),1) OVER (ORDER BY `DATE` ASC) lag_20_50
from assignment.infosys1) a ;

-----------------------------------------------------------------------------------------------

create table assignment.tcs2 as select
`Date`, `Close Price`, 
CASE	
	WHEN RowNumber <=50 THEN null
	WHEN (`20 Day MA` > `50 Day MA`)  AND lag_20_50 < 0 THEN 'BUY'
	WHEN (`20 Day MA` < `50 Day MA`) AND lag_20_50 > 0 THEN 'SELL'
	ELSE 'HOLD'
END as `Signal`
from (select row_number() OVER (ORDER BY `Date` ASC) RowNumber,
`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`,
LAG((`20 Day MA`) - (`50 Day MA`),1) OVER (ORDER BY `DATE` ASC) lag_20_50
from assignment.tcs1) a ;

-----------------------------------------------------------------------------------------------

create table assignment.tvs2 as select
`Date`, `Close Price`, 
CASE	
	WHEN RowNumber <=50 THEN null
	WHEN (`20 Day MA` > `50 Day MA`)  AND lag_20_50 < 0 THEN 'BUY'
	WHEN (`20 Day MA` < `50 Day MA`) AND lag_20_50 > 0 THEN 'SELL'
	ELSE 'HOLD'
END as `Signal`
from (select row_number() OVER (ORDER BY `Date` ASC) RowNumber,
`Date`,
`Close Price`,
`20 Day MA`,
`50 Day MA`,
LAG((`20 Day MA`) - (`50 Day MA`),1) OVER (ORDER BY `DATE` ASC) lag_20_50
from assignment.tvs1) a ;

-----------------------------------------------------------------------------------------------

-- Creating a UDF to take date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
-- use as select bajaj_signal('2017-10-22') date format to be yyyy-mm-dd
-- Default value as no signal for which there is no entry in the table.

drop function if exists bajaj_signal;

DELIMITER $$
create function bajaj_signal(date_input date) 
returns char(10) 
deterministic
begin
declare stock_signal char(4);
set stock_signal = (select `Signal` from assignment.bajaj2 where `Date` = date_input) ;
return (stock_signal);
end
$$
DELIMITER ;