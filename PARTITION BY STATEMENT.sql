/*
PARTITION BY : With the PARTITION BY statement, we are able to divide the result into partitions and perform computations on each subset of partitioned data.*/


SELECT FoodName, Vegeterian, COUNT(Origin) OVER (PARTITION BY Origin) as TotalOrigin
FROM SQLTutorial.dbo.RestaurantMenu
INNER JOIN SQLTutorial.dbo.FoodPrices
    ON SQLTutorial.dbo.RestaurantMenu.FoodID = SQLTutorial.dbo.FoodPrices.FoodID

/* RESULT : The result is different from what we would expect in a GROUP BY statement. Here, for example we have FoodName = 'Turokafteri', Vegeterian = 'Yes' and in
			TotalOrigin = 7 which means that we have total 7 FoodNames which have the same Origin with the 'Turokafteri'. In order to take the same result with
			GROUP BY statement, we should have Origin, COUNT(Origin) and the GROUP BY statement below underneath the JOIN statement.
			So, by using the PARTITION BY we are able to isolate one column and perform an aggregate function based on this column and add extra information
			such as FoodName, Vegeterian.*/
