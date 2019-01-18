select product, placed_on, price 
from order_items
left join product_variations on order_items.product_variation=product_variations.id
left join orders on order_items.order = orders.id
order by product, placed_on;


# Counts number of price changes
select product, count(distinct price) as number_changes
from order_items
left join product_variations on order_items.product_variation=product_variations.id
left join orders on order_items.order = orders.id
group by product;

select count(*), avg(length_of_time), avg(price_change)

from (
  select 
  product, 
  placed_on, 
  price, 
  lag(price, 1) over (partition by product order by placed_on) - price as price_change,
  datediff(placed_on, lag(placed_on, 1) over (partition by product order by placed_on)) as length_of_time
  from order_items
  left join product_variations on order_items.product_variation=product_variations.id
  left join orders on order_items.order = orders.id

) as tmp
                                       
where price_change>0


select avg(length_of_time), avg(price_change)

from (
  select 
  product, 
  placed_on, 
  price, 
  price - lag(price, 1) over (partition by product order by placed_on) as price_change,
  datediff(placed_on, lag(placed_on, 1) over (partition by product order by placed_on)) as length_of_time
  from order_items
  left join product_variations on order_items.product_variation=product_variations.id
  left join orders on order_items.order = orders.id
) as tmp
                                       
where price_change is not NULL



