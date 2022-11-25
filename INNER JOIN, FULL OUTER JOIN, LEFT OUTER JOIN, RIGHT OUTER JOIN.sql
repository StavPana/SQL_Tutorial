/*
INNER JOIN OR JOIN : It is necessary having a common(ideally unique values) column to the tables that we are going to join. Inner Join or Join selects
                     records that have matching values in all tables that are included in Join statement.
*/

SELECT *
FROM RestaurantMenu
INNER JOIN FoodPrices  --Here we define with which table, we are going to Join the first one
     ON RestaurantMenu.FoodID = FoodPrices.FoodID --Here we define the common column
--As a result we will take only the common values based on FoodID Column

/*
FULL OUTER JOIN : Full Outer Join returns all records from both tables independently of the existance of a common column. So, if we have rows in a table
                  that don't have matches to the other table, those rows will be listed as well and they are going to be filled with NULL.
*/

SELECT *
FROM RestaurantMenu
FULL OUTER JOIN FoodPrices  
     ON RestaurantMenu.FoodID = FoodPrices.FoodID 
--As a result we will take all the records from both tables.

/*
LEFT OUTER JOIN : Left Outer Join returns all records from the left table and the matching values from the right table.
*/

SELECT *
FROM RestaurantMenu --This is the left table
LEFT OUTER JOIN FoodPrices  --This is the right table
     ON RestaurantMenu.FoodID = FoodPrices.FoodID 
--As a result we will take all the records from the left table and the matching records from the right table.

/*
RIGHT OUTER JOIN : Right Outer Join returns all records from the right table and the matching values from the left table.
*/

SELECT *
FROM RestaurantMenu --This is the left table
LEFT OUTER JOIN FoodPrices  --This is the right table
     ON RestaurantMenu.FoodID = FoodPrices.FoodID 
--As a result we will take all the records from the right table and the matching records from the left table.