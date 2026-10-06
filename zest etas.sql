use zesteats;

select distinct city,count(customer_id) as total_customers
from customer
group by city
order by count(customer_id) desc;

select city,count(case when is_active=1 then 1 end) as active_restaurants,
count(case when is_active=0 then 1 end) as in_active_restaurants ,
count(case when is_active=1 then 1 end) +count(case when is_active=0 then 1 end) as total_restaurant
from 
restaurants
group by city
order by count(case when is_active=1 then 1 end) +count(case when is_active=0 then 1 end) desc;

select distinct delivery_status,count(delivery_status) as total_status,
(count(delivery_status)/(select count(delivery_status) from deliveries))*100 as  total_pct
from deliveries 
group by  delivery_status;


select full_name,city,customer_segment,
count(order_id) as total_orders
from customer c join orders o on c.customer_id=o.customer_id
group by full_name,city,customer_segment
having count(order_id)>3;

select restaurant_name,cuisine_type, 
sum(case when delivery_status="completed" then total_amount else 0 end) as total_revenue
from deliveries d  join orders o on d.order_id=o.order_id
join restaurants r on r.restaurant_id=o.restaurant_id
group by restaurant_name,cuisine_type
order by sum(case when delivery_status="completed" then total_amount else 0 end) desc	;

select restaurant_name,city,cuisine_type,opened_date
from restaurants r left join orders o on r.restaurant_id=o.restaurant_id
group  by restaurant_name,city,cuisine_type ,opened_date
having count(order_id)=0;

select city,sum(subtotal*commission_rate) as commission_rate,
rank() over( order by sum(subtotal*commission_rate) desc) ranks
from restaurants r join orders o on r.restaurant_id=o.restaurant_id
group by city;

select year(pickup_datetime) as year,
month(pickup_datetime) as month,
sum(discount_amount)as total_discount_amount,
(count(case when discount_amount>1 then 1 else 0 end)/(select count(*)from orders))*100 as discount_usage_rate
from deliveries d join orders o on d.order_id=o.order_id
group by year(pickup_datetime),month(pickup_datetime)
order by year(pickup_datetime),month(pickup_datetime) asc;

select hour(delivery_datetime)as hours,
count(case when delivery_status="completed" then order_id  end) as delivered_orders
from deliveries
group by hour(delivery_datetime)
order by hour(delivery_datetime);


select city,avg(travel_time_minutes) as avg_time,
(select  avg(travel_time_minutes) from deliveries) as overall_avg_time,
avg(travel_time_minutes)-(select  avg(travel_time_minutes) from deliveries) as difference
from deliveries d join  orders o on d.order_id=o.order_id
join customer c on c.customer_id=o.customer_id
group by city
having avg(travel_time_minutes)>(select  avg(travel_time_minutes) from deliveries);

select * from customer;
select * from deliveries; 
select * from orders;
select * from delivery_partners;
select  * from restaurants;
select * from order_items;

select * from evaluate;