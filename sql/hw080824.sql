use oe;

-- Вывести максимальный и минимальный credit_limit.

select 
min(CREDIT_LIMIT),max(CREDIT_LIMIT)
from customers;

-- Вывести покупателей у которых creditlimit выше среднего creditlimit.
select CUST_FIRST_NAME, CUST_LAST_NAME
from customers
where CREDIT_LIMIT > (select avg(CREDIT_LIMIT) from customers);

-- Найти кол/во покупателей имя которых начинается на букву 'D' и credit_limit больше 500.
select count(*)
from customers
where CREDIT_LIMIT > 500 and CUST_FIRST_NAME Like "D%";

-- Найти среднее значение unit_price
select avg(UNIT_PRICE)
from order_items;

-- Вывести имена продуктов(PRODUCT_NAME), кол/во(QUANTITY) которых меньше среднего.

select t2.PRODUCT_NAME, t1.QUANTITY
from order_items t1
join product_information t2 on t1.PRODUCT_ID = t2.PRODUCT_ID
where t1.QUANTITY < (select avg(QUANTITY) from order_items);

-- Таблицы - orders, customers
-- Вывести имя и фамилию покупателя с максимальной общей суммой покупки(ORDER_TOTAL).

select t1.CUST_FIRST_NAME, t1.CUST_LAST_NAME
from customers t1
join orders t2 on t1.CUSTOMER_ID=t2.CUSTOMER_ID
where ORDER_TOTAL = (select max(ORDER_TOTAL) from orders);

-- Найти сумму общей суммы покупок(ORDER_TOTAL) всех мужчин покупателей.

SELECT SUM(t2.ORDER_TOTAL) AS total_sum
FROM customers t1
JOIN orders t2 ON t1.CUSTOMER_ID = t2.CUSTOMER_ID
WHERE t1.GENDER = 'M';