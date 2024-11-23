# Restaurant SQL Database
## Restaurant Schema

### Overview

The `Restaurant` database is designed to manage the operations of a restaurant, including employee management, menu categorization, order handling, and kitchen operations. The database schema includes the following tables:
- `Employees`
- `Kitchen`
- `Menu`
- `Categories`
- `Counters`

### Table Descriptions

#### Employees

The `Employees` table stores information about the restaurant employees, including their roles and assignments.

| Column Name   | Data Type | Constraints        | Description                                 |
| ------------- | ----------| ------------------ | ------------------------------------------- |
| `Emp_ID`      | `int`     | PRIMARY KEY, NOT NULL | Unique identifier for each employee         |
| `Emp_Name`    | `varchar(40)` | NOT NULL          | Name of the employee                        |
| `Hiredate`    | `datetime` | NOT NULL            | Date of hiring                              |
| `Salary`      | `int`     | NOT NULL            | Salary of the employee                      |
| `Station_Name`| `varchar(30)` | NOT NULL          | Station or role assigned to the employee    |

### Kitchen

The `Kitchen` table manages the kitchen stations and the employees assigned to them.

| Column Name     | Data Type | Constraints        | Description                                 |
| --------------- | ----------| ------------------ | ------------------------------------------- |
| `Station_Name`  | `varchar(20)` | PRIMARY KEY, NOT NULL, DEFAULT 'Enter Station Name' | Name of the kitchen station |
| `Emp_Name`      | `varchar(40)` | NOT NULL          | Name of the employee assigned to the station|
| `Cookware_Name` | `varchar(40)` | NOT NULL          | Name of the cookware used at the station    |
| `Emp_id`        | `varchar(max)` | NOT NULL, DEFAULT '100' | Identifier of the employee assigned to the station |

### Menu

The `Menu` table categorizes the different types of food items available in the restaurant.

| Column Name     | Data Type | Constraints        | Description                                 |
| --------------- | ----------| ------------------ | ------------------------------------------- |
| `Menu_ID`       | `int`     | PRIMARY KEY, NOT NULL | Unique identifier for each menu item        |
| `Category_Name` | `varchar(20)` | NOT NULL          | Name of the category (e.g., Appetizers)     |
| `Price_Range`   | `varchar(5)` | NOT NULL, DEFAULT '$$$' | Price range of the menu item                |
| `Descriptn`     | `varchar(50)` |                   | Description of the menu category            |

### Categories

The `Categories` table lists the individual items under each menu category along with their prices.

| Column Name     | Data Type | Constraints        | Description                                 |
| --------------- | ----------| ------------------ | ------------------------------------------- |
| `Menu_ID`       | `int`     | PRIMARY KEY, NOT NULL | Unique identifier for each menu item        |
| `Category_Name` | `varchar(20)` |                   | Category to which the item belongs          |
| `Item_Name`     | `varchar(50)` |                   | Name of the menu item                       |
| `Price`         | `varchar(10)` |                   | Price of the menu item                      |

### Counters

The `Counters` table records the transactions and orders managed by the restaurant.

| Column Name      | Data Type | Constraints        | Description                                 |
| ---------------- | ----------| ------------------ | ------------------------------------------- |
| `Counter_ID`     | `int`     | PRIMARY KEY, NOT NULL | Unique identifier for each transaction      |
| `Price`          | `int`     | NOT NULL, DEFAULT 0  | Total price of the order                    |
| `Fulfilment_name`| `varchar(20)` |                  | Method of order fulfillment (e.g., Pickup)  |
| `Payment_Type`   | `varchar(20)` |                  | Payment method used for the order           |
| `Emp_ID`         | `varchar(2000)` |                | Identifier of the employee handling the order|

## Relationships

- **Employees and Kitchen:** The `Emp_ID` in the `Kitchen` table references the `Emp_ID` in the `Employees` table to assign employees to kitchen stations.
- **Menu and Categories:** The `Menu_ID` in the `Categories` table references the `Menu_ID` in the `Menu` table to list items under each menu category.
- **Employees and Counters:** The `Emp_ID` in the `Counters` table references the `Emp_ID` in the `Employees` table to record which employee handled each transaction.


