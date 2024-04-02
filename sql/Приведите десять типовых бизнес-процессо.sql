Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube), a также их соответствие по CRUD.

1.	Загрузить видео на платформу (Create).
2.	Просмотреть видео (Read).
3.	Выбор качества видео для пользователя (Update).
4.	Поиск видео (Read).
5.	Добавить видео в избранные (Create).
6.	Добавить фильтр к загрузке видео с запрещенным контентом (Update) - is blocked.
7.	Написать комментарий к видео (Create).
8.	Начисление бонусов или денежное вознаграждение за большое количество просмотров (Create).
9.  Блокировка аккаунтов - (Update) - is blocked. 
10. Расчёт рейтинга "Видеоконтент-создателей" .(Update, aggregation). 

-- Вывести название и стоимость товаров от 20 до 150 EUR.
SELECT ProductName,
Price
FROM Products
where Price > 20 and Price < 150;

-- Вывести телефоны поставщиков из Japan и Spain.
SELECT 
Phone
FROM Suppliers
where Country = "Spain" or Country="Japan";

-- Вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.
SELECT ProductName,
Price
FROM Products
where ProductID !=1;

-- Вывести контактные имена клиентов, кроме тех, что из Germany и Brazil.
SELECT 
ContactName
FROM Customers
where Country != "Germany" and Country != "Brazil";

-- Вывести товары с ценой от 50 до 100 EUR (вкл.)
SELECT *
FROM Products
where Price >= 50 and Price < 100;

-- Вывести название и стоимость товаров из категорий 1 и 3 со стоимостью до 50 EUR (вкл.)
SELECT ProductName,
Price
FROM Products
where Price <= 50 and (CategoryID =1 or CategoryID =3);
