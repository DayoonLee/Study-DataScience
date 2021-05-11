-- Create two views
-- 1. Create a view named purchase_item_total

create view purchase_item_total as
select purchase_id, product_id, copies, price_per_copy, copies*price_per_copy as item_total
from purchaseitem;

-- 2. Using purchase_item_total, create a second view called purchase_total

create view purchase_total as
select purchase_id, sum(item_total) as total_paid
from purchase_item_total group by purchase_id;


-- SQL query Q1

select purchase.outlet_name, outlet.address_street, outlet.address_city,
purchase.date_time, count(purchase_item_total.product_id) as nr_diff_products, 
sum(purchase_item_total.item_total) as tot_paid_by_customer
from purchase inner join purchase_item_total
on purchase.purchase_id = purchase_item_total.purchase_id
left join outlet on outlet.outlet_name = purchase.outlet_name
group by purchase.outlet_name, purchase.date_time, outlet.address_street,
outlet.address_city order by purchase.date_time;


-- SQL query 02

select customer.customer_name, customer.address_street, customer.address_city,
max(purchase_total.total_paid), avg(purchase_total.total_paid)
from purchase_total inner join purchase
on purchase_total.purchase_id = purchase.purchase_id
inner join customer
on purchase.customer_nr = customer.customer_nr
where purchase_total.total_paid > 100
group by customer.customer_name, customer.address_street, customer.address_city;


-- SQL query 03

with total_copies_stock(product_id, nr_copies_stock) as 
(select product_id, sum(copies) from stock group by product_id),
total_copies_sold (product_id, nr_copies_sold) as
(select product_id, sum(copies) from purchase_item_total group by product_id)
select product.product_id, product.product_name, total_copies_stock.nr_copies_stock,
total_copies_sold.nr_copies_sold
from product inner join total_copies_stock on product.product_id = total_copies_stock.product_id
inner join total_copies_sold
on product.product_id = total_copies_sold.product_id
group by product.product_id, total_copies_stock.nr_copies_stock, total_copies_sold.nr_copies_sold
order by nr_copies_sold desc;


-- SQL query 04
-- Consider CA001 as a category 10 and CA002 as a category 11

select product_category.category_id, sum(purchase_item_total.item_total),
purchase.outlet_name, outlet.address_city
from product_category inner join purchase_item_total
on product_category.product_id = purchase_item_total.product_id
inner join purchase
on purchase.purchase_id = purchase_item_total.purchase_id
inner join outlet
on purchase.outlet_name = outlet.outlet_name
group by product_category.category_id, purchase.outlet_name, outlet.address_city;


