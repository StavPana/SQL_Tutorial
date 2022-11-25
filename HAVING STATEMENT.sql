/*
HAVING STATEMENT : We use HAVING Statement in cases that we want to filter sth based on a aggregate function. We cannot use WHERE Statement with
                   aggregate functions.
*/

SELECT FoodName, Price, COUNT(Price) AS PriceCount
FROM RestaurantMenu
INNER JOIN FoodPrices
     ON RestaurantMenu.FoodID = FoodPrices.FoodID
GROUP BY FoodName, Price
HAVING COUNT(Price) = 1 AND FoodName LIKE 'P%' /*We cannot use WHERE because of the aggregate function(COUNT) and we also use a wild card in order to have only
                                               food names which have P as their first letter*/