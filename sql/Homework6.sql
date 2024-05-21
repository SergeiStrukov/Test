--   уровень сложности: В рамках БД "песочница" напишите след/запросы:

-- Вывести заказы со стоимостью от 5000 и более EUR (проекция: номер_заказа, стоимость_заказа)
SELECT 
OrderDetails.OrderID,
SUM(Products.Price * OrderDetails.Quantity) AS total_cost_over_5000
FROM OrderDetails
join Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetails.OrderID
HAVING
	total_cost_over_5000 >= 5000
-- Вывести страны, в которые было отправлено 3 и более заказов

SELECT Customers.Country,
COUNT(*) AS total_orders
FROM Orders
join Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Country
Having total_orders >= 3
-- Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)
SELECT Products.ProductName,
sum(OrderDetails.Quantity) AS total_quantity_sold
FROM OrderDetails
join Products ON Products.ProductID = OrderDetails.ProductID
group by Products.ProductName
Order BY total_quantity_sold DESC
limit 10
-- Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)
SELECT  Employees.EmployeeID,
sum(OrderDetails.Quantity*Products.Price) *0.05 as Salary_of_manager
FROM Orders
join Employees ON Employees.EmployeeID = Orders.EmployeeID
join OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON Products.ProductID = OrderDetails.ProductID
group by Employees.EmployeeID