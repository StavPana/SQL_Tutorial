--UPDATE

UPDATE SQLTutorial.dbo.RestaurantMenu --We give the name of the table that we want to update sth
SET Vegeterian = 'No' --We give what we want to update(Column and value)
WHERE FoodID = 13 /*We give extra information in order to specify the exact row that we want to update. If we don't specify the exact row then all 
                    the records in the Vgeterian column will be turned to 'No'*/

--DELETE 

DELETE FROM FoodPrices --We give the name of the table that we want to delete sth
WHERE FoodID = 12 --We specify the exact row that we want to delete. We cannot get the data back!!!

