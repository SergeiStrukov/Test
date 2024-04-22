--  1 уровень сложности: В рамках БД "песочница" напишите след/запросы:

-- (1) Вывести данные о товарах (проекция: название товара, цена, название категории, название компании поставщика)
SELECT Products.ProductName,
Products.Price,
Categories.CategoryName,
Suppliers.SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID 
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

-- (2) Вывести список стран, которые поставляют морепродукты
SELECT Suppliers.Country FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryID IN (8);

-- (3) Вывести два самых дорогих товара из категории Beverages из USA
SELECT Products.ProductName,
Products.Price
FROM Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID
where Categories.CategoryName = "Beverages" and Suppliers.Country = "USA"
ORDER BY Products.Price DESC 
LIMIT 2

-- (4) Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT Products.ProductName,
Products.Price AS PriceUSD
FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID
where OrderDetails.Quantity = '1'
ORDER BY PriceUSD DESC 

-- (5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД
База данных — это структура для хранения данных, а СУБД — это инструмент, который управляет этой структурой.