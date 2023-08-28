------Crear tabla que unifique todos los meses-------

CREATE TABLE consolidated_sales (
    fecha date,
    "Order ID" int,
    "Product" text,
    ventas_producto float,
    ciudad text
);
--------------------------------------------
------Insertar datos de query en tabla creada 'consolidated_sales'-------
INSERT INTO consolidated_sales (fecha, "Order ID", "Product", ventas_producto, ciudad)
-----enero------
SELECT
split_part("Order Date",' ', 1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_january_2019
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------febrero------
union all

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_february_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
--------marzo---------
union all

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_march_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
------abril-------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_april_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------mayo-------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_may_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------junio-------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_june_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------julio------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_july_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------agosto----
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_august_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
--------septiembre-------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_september_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------octubre------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_october_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
-------noviembre-----
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_november_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
--------diciembre------
union all 

SELECT
split_part("Order Date",' ',1) as fecha
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float as ventas_producto
,split_part("Purchase Address",',',2)::text as ciudad
FROM 
sales_december_2019 
group by 
"Order Date"
,"Order ID"::int
,"Product"::text
,"Quantity Ordered"::int*"Price Each"::float
,split_part("Purchase Address",',',2)::text
