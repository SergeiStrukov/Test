-- 1. Посчитать количество рейсов по каждой модели самолета. Вывести modelname и flightcount.

select t1.model_name, sum(t2.flightcount) as flightcount
from airliners as t1
join (select count(*) as flightcount, airliner_id
		from trips
		group by airliner_id) t2
on t1.id=t2.airliner_id
        group by t1.model_name;

-- 2. Вычислить среднюю стоимость билета по классам обслуживания. Вывести serviceclass и averageprice.

select avg(price) as average_price, service_class
from tickets
group by service_class;

-- 3. Определить средний возраст клиентов, сгруппированных по классу обслуживания. Вывести serviceclass и averageage.

select avg(t1.age) as averageage, t2.service_class
from clients t1
join (select service_class, client_id
		from tickets) t2
on t1.id=t2.client_id
group by t2.service_class;

-- 4. Получить общее количество билетов, купленных каждым клиентом. Вывести name и ticket_count.

select count(t1.id) as ticket_count, t2.name
from tickets t1
join clients t2 on t1.client_id=t2.id
group by t1.client_id;

-- 5. Определить количество рейсов, отправленных из каждого аэропорта. Вывести departure и departure_count.

select count(departure) as departure_count,departure from trips group by departure;

-- 6. Вычислить общий доход от продажи билетов для каждой страны производителя самолетов. Вывести country и total_sum.

select t1.country, sum(t2.price) as total_sum
from airliners t1
join trips t3 on t1.id = t3.airliner_id
join tickets t2 on t3.id = t2.trip_id
group by t1.country;
