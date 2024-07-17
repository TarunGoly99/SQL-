CREATE DATABASE RESTAURANT;
-- Creates new Database "RESTAURANT"

   CREATE SCHEMA BiryaniPot;
-- Creates new Schema "Biryanipot"


DROP SCHEMA BiryaniPot;

DROP TABLE BiryaniPot.CATEGORIES;
DROP TABLE BiryaniPot.Employees;
DROP TABLE BiryaniPot.KITCHEN;
DROP TABLE BiryaniPot.MENU;
DROP TABLE BiryaniPot.COUNTERS;


CREATE TABLE BiryaniPot.Counters (
    Counter_ID       int NOT NULL,
    Price            int NOT NULL DEFAULT 0,
    Fulfilment_name  varchar(20),
    Payment_Type     varchar(20),
	Emp_ID           VARCHAR(2000),
    CONSTRAINT PK_Counter PRIMARY KEY(Counter_ID)
);
-- Creating New Table for CounterS

CREATE TABLE BiryaniPot.Kitchen (
    Station_Name   varchar(20) NOT NULL DEFAULT 'Enter Station Name',
    Emp_Name       varchar(40) NOT NULL,
    Cookware_Name  varchar(40) NOT NULL,
    Emp_id       varchar(max) NOT NULL DEFAULT 100, 
    CONSTRAINT PK_Station PRIMARY KEY(Station_Name)
);
-- Creating table for kitchen

CREATE TABLE BiryaniPot.Menu (
    Menu_ID         int NOT NULL,
    Category_Name   varchar(20) NOT NULL,
    Price_Range     varchar(5) NOT NULL DEFAULT '$$$',
    Descriptn       VARCHAR(50),
    CONSTRAINT pk_Menuid PRIMARY KEY(Menu_ID)
);
-- Creating Table about different categories appetizers, entrees, main course, etc.

CREATE TABLE BiryaniPot.Categories (
    Menu_ID          int NOT NULL,
    Category_Name    varchar(30),
    Item_Name        varchar(50),
    Price            varchar(10),
    CONSTRAINT pk_Item_Name PRIMARY KEY(Item_Name)
);
-- Creating Categories table for items

CREATE TABLE BiryaniPot.Employees (
    Emp_ID            int NOT NULL PRIMARY KEY,  
    Emp_Name          varchar(40),
    Hiredate          datetime,
    Salary            int,
    Station_Name       varchar(30)
);


-- Creating Table for Employee info 

-- Inserting Data into Employees Table
-- Inserting Data into Employees Table
INSERT INTO BiryaniPot.Employees (Emp_ID, Emp_Name, Hiredate, Salary, Station_Name)
VALUES
    (1, 'John Doe', '2023-01-15', 8000, 'Grill1'),
    (2, 'Jane Smith', '2023-02-20', 2500, 'Fry'),
    (3, 'Alice Johnson', '2023-03-25', 4500, 'Bake'),
    (4, 'Robert Brown', '2023-04-30', 2250, 'Prep'),
    (5, 'Michael White', '2023-05-10', 10000, 'Manager'),
    (6, 'Lisa Black', '2023-06-15', 4100, 'Grill2'),
    (7, 'Tom Harris', '2023-07-20', 2000, 'Fry2'),
    (8, 'Sara Green', '2023-08-25', 4600, 'Bake2'),
    (9, 'Mary Blue', '2023-09-30', 1750, 'Prep2'),
    (10, 'James Yellow', '2023-10-05', 8500, 'Manager'),
    (11, 'Emma White', '2023-01-10', 3000, 'Waiter'),
    (12, 'Liam Brown', '2023-02-15', 3200, 'Waiter'),
    (13, 'Olivia Green', '2023-03-20', 3100, 'Waiter'),
    (14, 'Noah Black', '2023-04-25', 3300, 'Waiter');


	-- Inserting Data into Kitchen Table
INSERT INTO BiryaniPot.Kitchen (Station_Name, Emp_Name, Cookware_Name, Emp_id)
VALUES
    ('Grill1', 'John Doe', 'Grill Pan', '1'),
    ('Fry', 'Jane Smith', 'Frying Pan', '2'),
    ('Bake', 'Alice Johnson', 'Oven', '3'),
    ('Prep', 'Robert Brown', 'Knife Set', '4'),
    ('Sauce', 'Michael White', 'Sauce Pan', '5'),
    ('Grill2', 'Lisa Black', 'Grill Pan', '6'),
    ('Fry2', 'Tom Harris', 'Frying Pan', '7'),
    ('Bake2', 'Sara Green', 'Oven', '8'),
    ('Prep2', 'Mary Blue', 'Knife Set', '9'),
    ('Sauce2', 'James Yellow', 'Sauce Pan', '10');

-- Inserting Data into Menu Table
INSERT INTO BiryaniPot.Menu (Menu_ID, Category_Name, Price_Range, Descriptn)
VALUES
    (2001, 'Appetizers', '$$', 'Veg Starters'),
    (2002, 'Appetizers', '$$$', 'Non-Veg Starters'),
    (2003, 'Soups', '$$', 'Soups Dishes'),
    (2004, 'Breads', '$$', 'Bread Item'),
    (2005, 'Entrees', '$$', 'Veg Curries'),
    (2006, 'Entrees', '$$', 'Non-Veg Curries'),
    (2007, 'Biryanis/ Rice', '$$$', 'Veg Rice Items'),
    (2008, 'Biryanis/ Rice', '$$$', 'Non Veg Rice Items'),
    (2009, 'Combo Meals', '$$', 'Combo Meal'),
    (2010, 'Deserts', '$$', 'Special Acoustic Sweets'),
    (2011, 'Soft Drinks', '$', 'Drinks chilled');

	-- Inserting Data into Categories Table
INSERT INTO BiryaniPot.Categories (Menu_ID, Category_Name, Item_Name, Price)
VALUES
    -- Appetizers - Veg Appetizers
    (2001, 'Veg Appetizers', 'Crispy Masala Peppercorn', '$14.99'),
    (2001, 'Veg Appetizers', 'Gobi 65', '$14.99'),
    (2001, 'Veg Appetizers', 'Gobi Manchurian', '$13.99'),
    (2001, 'Veg Appetizers', 'Cut Mirchi', '$13.99'),
    (2001, 'Veg Appetizers', 'Egg Bonda', '$14.99'),

    -- Appetizers - Non-Veg Appetizers
    (2002, 'Non Veg Appetizers', 'Chicken 65', '$16.99'),
    (2002, 'Non-Veg Appetizers', 'Chicken 555', '$16.99'),
    (2002, 'Non-Veg Appetizers', 'Chilli Chicken', '$15.99'),
    (2002, 'Non-Veg Appetizers', 'Mutton Fry', '$17.99'),
    (2002, 'Non-Veg Appetizers', 'Fish Fry', '$17.99'),
    (2002, 'Non-Veg Appetizers', 'Shrimp Manchurian', '$18.99'),
    (2002, 'Non-Veg Appetizers', 'Apollo Fish', '$19.99'),

    -- Soups - Veg & Non Veg
    (2003, 'Soups', 'Veg Corn Soup', '$7.99'),
    (2003, 'Soups', 'Vegetable Manchiao Soup', '$8.99'),
    (2003, 'Soups', 'Chicken Soup', '$9.99'),

    -- Bread Items - Butter, Roti, Garlic
    (2004, 'Roti', 'Butter Roti', '$4.99'),
    (2004, 'Naan', 'Plain Naan', '$5.99'),
    (2004, 'Naan', 'Butter Naan', '$6.99'),
    (2004, 'Naan', 'Garlic Naan', '$7.99'),

    -- Veg Entrees
    (2005, 'Veg Entrees', 'Dal Makhani', '$13.99'),
    (2005, 'Veg Entrees', 'Palak Dal', '$14.99'),
    (2005, 'Veg Entrees', 'Bagara Baigan', '$15.99'),
    (2005, 'Veg Entrees', 'Mixed Vegtables', '$15.99'),
    (2005, 'Veg Entrees', 'Paneer Butter Masala', '$15.99'),

    -- Non Veg Entrees
    (2006, 'Non Veg Entrees', 'Butter Ckn', '$16.99'),
    (2006, 'Non Veg Entrees', 'Chicken Chettinad', '$17.99'),
    (2006, 'Non Veg Entrees', 'Chicken Tikka Masala', '$18.99'),
    (2006, 'Non Veg Entrees', 'Goat Curry', '$19.99'),
    (2006, 'Non Veg Entrees', 'Fish Curry', '$17.99'),
    (2006, 'Non Veg Entrees', 'Shrimp Vindaloo', '$20.99'),

    -- Vegetarian Rice Dishes
    (2007, 'Veg Rice or Biryanis', 'Veg Fried Rice', '$23.99'),
    (2007, 'Veg Rice or Biryanis', 'Veg Manchurian Fried Rice', '$24.99'),
    (2007, 'Veg Rice or Biryanis', 'Veg Biryani', '$22.99'),
    (2007, 'Veg Rice orBiryanis', 'Paneer Biryani', '$25.99'),

    -- Non- Veg Rice Dishes
    (2008, 'Non-Veg Rice or Biryanis', 'Egg Fried Rice', '$24.99'),
    (2008, 'Non-Veg Rice or Biryanis', 'Egg Biryani', '$23.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Chicken Fried Rice', '$25.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Chicken Dum Biryani', '$26.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Boneless Special Chicken Biryani', '$27.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Goat Dum Biryani', '$28.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Kheema Dum Biryani', '$29.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Shrimp Biryani', '$30.99'),
    (2008, 'Non-Veg Rice/Biryanis', 'Bagara Rice', '$21.99'),

    -- Combo Meals
    (2009, 'Combo Meals', 'Veg Combo Meal', '$12.99'),
    (2009, 'Combo Meals', 'Non-Veg Combo Meal', '$14.99'),

    -- Deserts: Sweets
    (2010, 'Sweets', 'Gulab Jamun', '$11.99'),
    (2010, 'Sweets', 'Rasmalai', '$10.99'),
    (2010, 'Sweets', 'Double Kha Meeta', '$9.99'),
    (2010, 'Sweets', 'Rasgulla', '$9.99'),

    -- Soft Drinks: Soft Refrigerated Drinks
    (2011, 'Soft Refrigerated Drinks', 'Thumps UP', '$3.99'),
	 (2011, 'Soft Refrigerated Drinks', 'Sprite', '$3.99'),
    (2011, 'Soft Refrigerated Drinks', 'Limca', '$3.99'),
    (2011, 'Soft Refrigerated Drinks', 'Canada Dry', '$4.99'),
    (2011, 'Soft Refrigerated Drinks', 'Coco Cola', '$4.99'),
    (2011, 'Soft Refrigerated Drinks', 'Golisoda', '$7.99'),
    (2011, 'Soft Refrigerated Drinks', 'Sweet Lassi', '$8.99'),
    (2011, 'Soft Refrigerated Drinks', 'Salt Lassi', '$8.99');

	-- Inserting Data into Counters Table
INSERT INTO BiryaniPot.Counters (Counter_ID, Price, Fulfilment_name, Payment_Type, Emp_ID)
VALUES 
    (1, 250, 'Pickup', 'Credit Card', '11'), -- Emma White (Waiter)
    (2, 300, 'Delivery', 'Cash', '12'), -- Liam Brown (Waiter)
    (3, 150, 'Dine-In', 'Credit Card', '13'), -- Olivia Green (Waiter)
    (4, 200, 'Delivery', 'Debit Card', '14'), -- Noah Black (Waiter)
    (5, 400, 'Dine-In', 'Cash', '5'), -- Michael White (Manager)
    (6, 350, 'Delivery', 'Credit Card', '10'), -- James Yellow (Manager)
    (7, 275, 'Pickup', 'Debit Card', '11'), -- Emma White (Waiter)
    (8, 225, 'Dine-In', 'Cash', '12'), -- Liam Brown (Waiter)
    (9, 175, 'Pickup', 'Credit Card', '13'), -- Olivia Green (Waiter)
    (10, 325, 'Delivery', 'Debit Card', '14'), -- Noah Black (Waiter)
    (11, 250, 'Pickup', 'Cash', '11'), -- Emma White (Waiter)
    (12, 300, 'Delivery', 'Credit Card', '12'), -- Liam Brown (Waiter)
    (13, 150, 'Pickup', 'Debit Card', '13'), -- Olivia Green (Waiter)
    (14, 200, 'Delivery', 'Cash', '14'), -- Noah Black (Waiter)
    (15, 400, 'Pickup', 'Credit Card', '5'), -- Michael White (Manager)
    (16, 350, 'Delivery', 'Debit Card', '10'), -- James Yellow (Manager)
    (17, 275, 'Pickup', 'Cash', '11'), -- Emma White (Waiter)
    (18, 225, 'Dine-In', 'Credit Card', '12'), -- Liam Brown (Waiter)
    (19, 175, 'Dine-In', 'Debit Card', '13'), -- Olivia Green (Waiter)
    (20, 325, 'Delivery', 'Cash', '14'), -- Noah Black (Waiter)
    (21, 250, 'Pickup', 'Credit Card', '11'), -- Emma White (Waiter)
    (22, 300, 'Delivery', 'Debit Card', '12'), -- Liam Brown (Waiter)
    (23, 150, 'Pickup', 'Cash', '13'), -- Olivia Green (Waiter)
    (24, 200, 'Dine-in', 'Credit Card', '14'), -- Noah Black (Waiter)
    (25, 400, 'Pickup', 'Debit Card', '5'), -- Michael White (Manager)
    (26, 350, 'Delivery', 'Cash', '10'), -- James Yellow (Manager)
    (27, 275, 'Pickup', 'Credit Card', '11'), -- Emma White (Waiter)
    (28, 225, 'Delivery', 'Debit Card', '12'), -- Liam Brown (Waiter)
    (29, 175, 'Pickup', 'Cash', '13'), -- Olivia Green (Waiter)
    (30, 325, 'Delivery', 'Credit Card', '14'); -- Noah Black (Waiter)



	SELECT * FROM BiryaniPot.Counters