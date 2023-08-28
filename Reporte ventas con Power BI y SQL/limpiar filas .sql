----borrar nulos y palabras----
SET datestyle TO MDY;

----enero-----
DELETE FROM sales_january_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_january_2019
WHERE "Order Date" IS NULL;
--------febrero-----
DELETE FROM sales_february_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_february_2019
WHERE "Order Date" IS NULL;
-----------marzo-----
DELETE FROM sales_march_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_march_2019
WHERE "Order Date" IS NULL;
---------abril-------
DELETE FROM sales_april_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_april_2019
WHERE "Order Date" IS NULL;
-----mayo-----
DELETE FROM sales_may_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_may_2019
WHERE "Order Date" IS NULL;
-----junio----
DELETE FROM sales_june_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_june_2019
WHERE "Order Date" IS NULL;
------julio------
DELETE FROM sales_july_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_july_2019
WHERE "Order Date" IS NULL;
-------agosto-----
DELETE FROM sales_august_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_august_2019
WHERE "Order Date" IS NULL;
------septiembre-----
DELETE FROM sales_september_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_september_2019
WHERE "Order Date" IS NULL;
-------october-------
DELETE FROM sales_october_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_october_2019
WHERE "Order Date" IS NULL;
----------november-----
DELETE FROM sales_november_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_november_2019
WHERE "Order Date" IS NULL;
-----december------
DELETE FROM sales_december_2019
WHERE "Order Date" = 'Order Date';
DELETE FROM sales_december_2019
WHERE "Order Date" IS NULL;