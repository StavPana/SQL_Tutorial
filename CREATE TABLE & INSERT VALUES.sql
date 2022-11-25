
--Creating a Table with the name Food and defining Columns and the type of inputs
CREATE TABLE Food  
(FoodID int,
FoodName varchar(50),
Vegeterian varchar(50),
Origin varchar(50))

--Adding values to the columns
INSERT Food VALUES
(1, 'Pastitsado', 'No', 'Greek'),
(2, 'Mpriam', 'Yes', 'Greek'),
(3, 'Gemista', 'Yes', 'Greek'),
(4, 'Giouvarlakia', 'No', 'Greek')

SELECT *
FROM Food

