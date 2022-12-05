/* 
CTE : Common Table Expression (CTE) is derived by a query and works as a virtual table which is eliminated after query execution.
*/
      
WITH CTE_FOOD as   --Here, we define the virtual table which is named as CTE_FOOD in order to use it later.
(SELECT FoodName, 
       Vegeterian, 
	   Origin, 
	   Price,
	   COUNT(Origin) OVER (PARTITION BY Origin) as TotalOrigin,
	   AVG(Price) OVER (PARTITION BY Origin) as AVGPriceByOrigin
FROM SQLTutorial.dbo.RestaurantMenu
INNER JOIN SQLTutorial.dbo.FoodPrices
   ON SQLTutorial.dbo.RestaurantMenu.FoodID = SQLTutorial.dbo.FoodPrices.FoodID
WHERE FoodName IS NOT NULL)

SELECT FoodName, TotalOrigin, AVGPriceByOrigin --Here, we extract only the information that we need by the virtual table (CTE_FOOD) that we created above.
FROM CTE_FOOD -- !!! CTE is not stored anywhere, so if we try to run only the last SELECT statement without running the CTE_FOOD we will get an error.
              -- !!! We have to put the SELECT statement right after the CTE statement.