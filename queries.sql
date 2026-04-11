-- create database customer;
-- use customer ;
-- select * from customer_shopping_behavior;

-- use customer;

-- Which Product Categories generate  the highest revenue ?
-- select category , sum(purchase_amount) from customer_shopping_behavior
-- group by category
-- order by sum(purchase_amount) desc

-- Which customer segments spends the most money ?
-- select age_group , gender , sum(purchase_amount) as total_spend from  customer_shopping_behavior
-- group by age_group , gender
-- order by sum(purchase_amount) desc

-- Which location generates the highest sales ?
-- select location , sum(purchase_amount) as sales from customer_shopping_behavior
-- group by location 
-- order by sales desc limit 1;

-- do subscribed customers spend more than non_subscribes customers ?
-- select subscription_status ,
-- count(*) as customer_count,
-- sum(purchase_amount) as total_sales , 
-- avg(purchase_amount) as avg_sales 
-- from customer_shopping_behavior
-- group by subscription_status 
-- order by avg_sales desc 

-- do discounts and promo codes actually increase revenue ?
-- select discount_applied , count(*) as customers , round(avg(purchase_amount),2) as Avg_revenue ,  sum(purchase_amount) as total_revenue from customer_shopping_behavior
-- group by discount_applied
-- order by Avg_revenue desc 

-- Which products/items are purchased most frequently ?
-- select item_purchased , count(*) as purchase_count , sum(purchase_amount) as total_revenue from customer_shopping_behavior
-- group by item_purchased 
-- order by purchase_count desc

-- Which season drives the highest sales and best performance categories ?  -- part 1 
-- select  season , sum(purchase_amount) as sales  from customer_shopping_behavior
-- group by season
-- order by sales desc

-- -- part 2 
-- select category , sum(purchase_amount) as sales  from customer_shopping_behavior
-- group by category 
-- order by sales 

-- which payment method and shipping type is preferred ?
-- select payment_method , count(*) as preferrence from customer_shopping_behavior 
-- group by payment_method
-- order by preferrence desc 

-- select shipping_type , count(*) as preferrence from customer_shopping_behavior 
-- group by shipping_type
-- order by preferrence desc

-- question 9 => which factors are associated with higher customer satisfaction  ?
-- select category , round(avg(review_rating),2) as avg_rating from customer_shopping_behavior 
-- group by category 
-- order by avg_rating desc 

-- select shipping_type , round(avg(review_rating),2) as avg_rating from customer_shopping_behavior 
-- group by shipping_type 
-- order by avg_rating desc 

-- select subscription_status , round(avg(review_rating),2) as avg_rating from customer_shopping_behavior 
-- group by subscription_status 
-- order by avg_rating desc 

-- select location , round(avg(review_rating),2) as avg_rating from customer_shopping_behavior 
-- group by location 
-- order by avg_rating desc 

-- select payment_method , round(avg(review_rating),2) as avg_rating from customer_shopping_behavior 
-- group by payment_method 
-- order by avg_rating desc 


-- select category , count(review_rating) as review_count , round(avg(review_rating),2) as avg_rating from customer_shopping_behavior 
-- group by category 
-- order by avg_rating desc 

-- which customer most likely to be repeat  buyers / loyal customers ?
-- select distinct customer_id , 
-- previous_purchases,
-- subscription_status,
-- purchaase_frequency_days
-- from customer_shopping_behavior
-- order by purchaase_frequency_days asc , 
-- previous_purchases desc 

