/*
	Cleaning data query

*/

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Standarize data formats
sp_help petrol_gas

select *
from petrol_gas


--replace comas in Daily_Oil_Consumption_Barrels
select replace(Daily_Oil_Consumption_Barrels, ',', '')
from petrol_gas

select replace(World_Share, '%', '')
from petrol_gas


--update columns
update petrol_gas set Daily_Oil_Consumption_Barrels = replace(Daily_Oil_Consumption_Barrels, ',', '')
from petrol_gas
update petrol_gas set World_Share = replace(World_Share, '%', '')
update petrol_gas set GDP_Per_Capita_USD = replace(GDP_Per_Capita_USD, ',', '')
 

--alter columns
alter table petrol_gas alter column Id smallint
alter table petrol_gas alter column Daily_Oil_Consumption_Barrels int
alter table petrol_gas alter column World_Share float
alter table petrol_gas alter column Yearly_Gallons_Per_Capita float
alter table petrol_gas alter column Price_Per_Gallon_USD float
alter table petrol_gas alter column Price_Per_Liter_USD float
alter table petrol_gas alter column Price_Per_Liter_PKR float
alter table petrol_gas alter column GDP_Per_Capita_USD int
alter table petrol_gas alter column GDP_Per_Capita_USD int
alter table petrol_gas alter column xTimes_Yearly_Gallons_Per_Capita_Buy int



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Populate or delete empty or NULL rows

select *
from petrol_gas 

/*
A quick scan show us there are no NULL values or empty rows
*/







--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--Work strings, spelling, white spaces

select *
from petrol_gas

select Country
from petrol_gas
order by Country asc

update petrol_gas set Country = replace(Country, '?', 'o')


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--Remove duplicates
select count(distinct(Id))
from petrol_gas

/*
The only columns we can find duplicates are in Id and Country, since all the others represent different and unique values. Therefore we do not have a clear criteria to determine other duplicates.
*/


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--Drop unused columns




--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
Analysis
*/


--top 10 countries
select top 10 *
from petrol_gas
order by Daily_Oil_Consumption_Barrels desc

--world share percentage
select top 10 *
from petrol_gas 
order by World_Share desc

--yearly gallons per capita
select top 10 country, Yearly_Gallons_Per_Capita
from petrol_gas
order by Yearly_Gallons_Per_Capita desc


--price per gallon 
select *
from petrol_gas
order by Price_Per_Gallon_USD asc


select *
from petrol_gas
order by Price_Per_Gallon_USD desc



--Highest gdp per capita
select *
from petrol_gas
order by GDP_Per_Capita_USD desc



select *
from petrol_gas
