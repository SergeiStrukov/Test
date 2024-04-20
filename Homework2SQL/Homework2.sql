-- 1. Вывести данные о товарах (проекция: название, ценасоскидкой0.5процента) по убыванию цены.
SELECT  ProductName,
price*0.995 as Price_down
FROM Products
ORDER BY Price DESC;
-- 2. Вывести товары в диапазоне цены от 50 до 200 EUR (проекция: название, ценаснаценкой30процентов) по возрастанию цены.
SELECT 
ProductName,
price*1.3 as Price_up
FROM Products 
where price <200 and price >50
ORDER BY 
  Price_up ASC;
-- 3. Вывести всех клиентов, кроме тех, что из USA и UK.
SELECT * 
FROM Customers
where Country not in ('USA','UK');
-- 4. Вывести товары из категорий 2 и 5 (проекция: все имеющиеся поля, цена в долларах)
SELECT *,
price as Price_Dollar
FROM Products
where CategoryID in(2,5);