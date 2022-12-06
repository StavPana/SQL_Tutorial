/*
Temp Tables : We use temporary tables in order to store data temporarily, something that we can not do for example with a CTE or sub query.
*/

CREATE TABLE #Temp_Table(
FoodName varchar(100),
Origin varchar(100),
TotalOrigin int,
AVGPiceByOrigin int)

INSERT INTO #Temp_Table
SELECT FoodName, 
	   Origin, 
	   COUNT(Origin) OVER (PARTITION BY Origin) as TotalOrigin,
	   AVG(Price) OVER (PARTITION BY Origin) as AVGPriceByOrigin
FROM SQLTutorial.dbo.RestaurantMenu
INNER JOIN SQLTutorial.dbo.FoodPrices
   ON SQLTutorial.dbo.RestaurantMenu.FoodID = SQLTutorial.dbo.FoodPrices.FoodID
WHERE FoodName IS NOT NULL

SELECT *
FROM #Temp_Table

/* COMMENT : If for a reason we try to run it again, we will take an error because the Temp_Table has already been created. So, firstly we should
             add a row above all others which is going to be this : DROP TABLE IF EXISTS #TempTable(Name of the temporary table) in order to firstly delete
			 the temporary table and after that continue running again.