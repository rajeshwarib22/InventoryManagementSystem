desc sales;
desc supplier;
desc purchase_track;
desc purchase;
desc product;
desc user;
desc inventory;

-- to check in stock,out of stock, over stocked or understocked products
select pd.product_id,pd.product_name, i.min_Quantity, 
i.max_Quantity,i.Quantity_Purchased, p.Status
from purchase p join  inventory i on p.Purchase_ID = i.Purchase_ID
join product pd on i.product_id = pd.Product_ID
where  i.Quantity_Purchased between i.min_Quantity and i.max_Quantity;

select pd.product_name,pd.product_id,i.Quantity_Purchased, p.Status 
from purchase p join  inventory i on p.Purchase_ID = i.Purchase_ID
join product pd on i.product_id = pd.Product_ID
where  i.Quantity_Purchased > i.max_Quantity;

select pd.product_name,pd.product_id,i.Quantity_Purchased, p.Status 
from purchase p join  inventory i on p.Purchase_ID = i.Purchase_ID
join product pd on i.product_id = pd.Product_ID
where  i.Quantity_Purchased < i.min_Quantity and i.Quantity_Purchased != 0;

select pd.product_name,pd.product_id,i.Quantity_Purchased, p.Status 
from purchase p join  inventory i on p.Purchase_ID = i.Purchase_ID
join product pd on i.product_id = pd.Product_ID
where  i.Quantity_Purchased < i.min_Quantity and i.Quantity_Purchased = 0;


-- to check how many items purchased in a month
select count(*) as 'Product Purchased in a month'
from purchase 
where year(purchase_date) = 2021 and
month(purchase_date) = 03;


-- to check what is the min and max price of the product available in the inventory
select min(i.Unit_Price) as 'Min price of product in inventory', 
max(i.Unit_Price) as 'Max price of product in inventory'
from product p, inventory i
where p.product_id=i.product_id;



-- To display different users of the inventory system using DISTINCT function
select distinct(role) from user;


-- To Fetch details about the product from product and inventory table using join function
select p.product_id,i.Inventory_ID, p.product_name, p.product_category, p.brand,
i.Quantity_Purchased,i.Unit_Price,i.Status from 
product p join inventory i 
on p.product_id = i.product_id
where p.product_id = 4;

-- To calculate the sum of sales for a month.
select year(salesdate) as sales_year,
month(salesdate) as sales_month,
sum(sales_price) as total_sales from sales
where year(salesdate) = 2023 and month(salesdate) = 08
group by sales_year, sales_month;

-- To calculate the Average price of products in inventory.
select avg(unit_price) as "Average price for product in inventory"
from inventory;