/*
CASE : With a Case statement we are able to specify a condition and what we want to be returned when this/these condition/s is/are met.
*/

SELECT FoodName, Price,
CASE
    WHEN Price>=10 THEN 'Expensive' 
	WHEN Price BETWEEN 6 AND 9 THEN 'Normal' 
    ELSE 'Cheap' 
END AS PriceClassification --We give a name to the column that is a result of the case statement in which we have a classification based on the price range
FROM RestaurantMenu
INNER JOIN FoodPrices
     ON RestaurantMenu.FoodID = FoodPrices.FoodID
WHERE Price is not NULL