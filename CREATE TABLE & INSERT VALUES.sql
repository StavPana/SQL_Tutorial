--Creating a Table1 with the name RestaurantMenu and defining Columns and the type of inputs
CREATE TABLE RestaurantMenu  
(FoodID int,
FoodName varchar(50),
Vegeterian varchar(50),
Origin varchar(50))

--Adding values to the columns of Table1
INSERT INTO RestaurantMenu VALUES
(1, 'Pastitsado', 'No', 'Greek'),
(2, 'Mpriam', 'Yes', 'Greek'),
(3, 'Gemista', 'Yes', 'Greek'),
(4, 'Giouvarlakia', 'No', 'Greek'),
(5, 'Pitsa', 'Possible', 'Italian'),
(6, 'Souffle', 'Possible', 'France'),
(7, 'Turokafteri', 'Yes', 'Greek'),
(8, 'Xalvas', 'Yes', 'Turkish'),
(9, 'Rizogalo', 'Yes', 'Greek'),
(10, 'Loukoumades', 'Yes', 'Greek'),
(13, NULL, NULL, 'Spanish')

----Creating a Table2 with the name FoodPrices and defining Columns and the type of inputs
CREATE TABLE FoodPrices
(FoodID int,
Price int)

--Adding values to the columns of Table2
INSERT INTO FoodPrices VALUES
(1, 10),
(2, 8),
(3, 7),
(4, 11),
(5, 6),
(6, 8),
(7, 4),
(8, 6),
(9, 6),
(10, 7),
(11, 14),
(12, 11),
(13, NULL)