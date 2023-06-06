create schema mobile_analysis;
use mobile_analysis;
select*from mobile;

-- Check Mobile Features And Price List --
select Phone_name, price from mobile;

-- Find Out The Price Of 5 Most Expensive Phones --
select*from mobile order by Price desc limit 5; 

-- Find Out The Price Of 5 Most Cheapest Phones --
select*from mobile order by Price asc limit 5;

-- List Of Top 5 Samsung Phones with price and All features --
select*from mobile where brands = 'samsung' order by Price desc limit 5;

-- Must Have Android Phones List Them Top 5 High price Android Phones --
select*from mobile where Operating_System_Type = 'Android' order by Price desc limit 5;

-- Must Have Android Phones List Them Top 5 Low price Android Phones --
select*from mobile where Operating_System_Type = 'Android' order by Price asc limit 5;

-- Must Have IOS Phones List Them Top 5 High price Android Phones --
select*from mobile where Operating_System_Type = 'iOS' order by Price desc limit 5;

-- Must Have IOS Phones List Them Top 5 Low price Android Phones --
select*from mobile where Operating_System_Type = 'iOS' order by Price asc limit 5;

-- : write a query which phone support 5g --
select*from mobile where 5G_Availability = 'Yes';
 
-- Top 5 phone with 5g support --
select*from mobile where 5G_Availability = 'Yes' order by price desc limit 5;

-- Total Price Of All Mobile Is to Be Find With Brand Name --
select brands, sum(price) from mobile group by Brands;

 