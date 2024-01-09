.mode box
.header ON 
WITH cu  AS (SELECT * FROM customers)
SELECT 
  cu.name_customers ,
    cu.segment as segment,
    me.name_orders,
    cu.food_allergy,
    me.price,
    me.price*1.07 as add_vat7,
    CASE
      WHEN segment = 'member' THEN me.price*1.07*0.9
        when segment = 'normal' THEN me.price*1.07 
    end as total_price, 
    ing.ingred_name_orders
FROM cu  
JOIN menu AS me 
  on cu.id_orders=me.id_orders
JOin ingredients AS ing
  ON me.name_orders=ing.name_orders
order by 7 DESC ;
--- cut off ----
.mode box
.header ON
WITH cu  AS (SELECT * FROM customers)
SELECT 
  me.name_orders,
  COUNT(*) AS count_order,
    ROUND(SUM(CASE
      WHEN segment = 'member' THEN me.price*1.07*0.9
        when segment = 'normal' THEN me.price*1.07 
    end),2) as total_price
FROM cu  
JOIN menu AS me 
  on cu.id_orders=me.id_orders
JOin ingredients AS ing
  ON me.name_orders=ing.name_orders
GROUP by me.name_orders 
order by 3 DESC ;
