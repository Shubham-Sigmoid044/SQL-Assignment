# SQL-Assignment
Shubham Kumar SQL-Assignment


## Q1 
What is the time period used?

Ans: Here date time period is used in 'date' column as the given format is yyyy-mm-dd.


## Q2
How many properties have duplicate entries? Remove duplicate rows (say a row appears 3 times, remove 2 and keep 1)

Ans: There are total of 365 rows having duplicate values.
Find query here --> [Query](https://github.com/Shubham-Sigmoid044/SQL-Assignment/blob/main/q2-duplicate.sql)

## Duplicate property
![image](https://user-images.githubusercontent.com/98617328/151655499-4801c3ce-f16c-41d2-93b1-0ab34d6f1ab0.png)

Created a new table airbnb1 after removing the duplicate rows and inserting into airbnb1;

## Airbnb1
![image](https://user-images.githubusercontent.com/98617328/151655632-9ad0971a-74e0-4705-be41-b156ce81ee11.png)



## Q3
For each property, find out the number of days the property was available and not available (create a table with listing_id, available days, unavailable days and available days as a fraction of total days)

Ans: For this I created two table containg available_days and unavailable days for the property and joining these two table to create new_airbnb1 table also containing fraction of available days. [Query](https://github.com/Shubham-Sigmoid044/SQL-Assignment/blob/main/q3-available_days.sql)

## new_airbnb1
![image](https://user-images.githubusercontent.com/98617328/151656484-a1acc309-9c19-4c45-b3c4-5fa6eee53571.png)


## Q4
How many properties were available on more than 50% of the days? How many properties were available on more than 75% of the days?

Ans: Using the new_airbnb table and counting all the property having value greater than given fraction. [Query](https://github.com/Shubham-Sigmoid044/SQL-Assignment/blob/main/q4)

## Properties were available on more than 50% of the days
![image](https://user-images.githubusercontent.com/98617328/151656700-28a2f197-515c-4b31-8952-34d613d0c5b7.png)

## Properties were available on more than 75% of the days
![image](https://user-images.githubusercontent.com/98617328/151656754-ce8523f9-ad42-411c-9b96-5694cf71e083.png)


## Q5
Create a table with max, min and average price of each property

Ans: Used different aggregate function on airbnb1 table which are available and grouping them with listing_id to return the table with max, min and avg value. [Query](https://github.com/Shubham-Sigmoid044/SQL-Assignment/blob/main/q5-min-max-avg)

![image](https://user-images.githubusercontent.com/98617328/151656828-da5cd324-51c6-4cf9-9a47-faa701289bb0.png)

## Q6
Extract properties with an average price of more than $500.

Ans: Used avg aggregate function on airbnb1 table which are available and grouping them with listing_id and filtering avg greater than $500. [Query](https://github.com/Shubham-Sigmoid044/SQL-Assignment/blob/main/q6)

![image](https://user-images.githubusercontent.com/98617328/151656874-cb6fbfc6-1d96-4bbd-b64b-e644c8ceeb7c.png)


