//1. Найти первых двух сотрудников в списке, отсортированных по имени.
db.employees4.find().sort({name:1}).limit(2)
//2. Найти сотрудников младше 30 лет и отсортировать их по возрасту в порядке возрастания.
db.employees4.find({age:{$lt:30}}).sort({age:1})
//3. Найти сотрудников, начиная с третьего по порядку (пропустив первых двух), и ограничить выборку тремя следующими.
db.employees4.find().skip(2).limit(3)
//4. Найти сотрудников, занимающих должность "Manager" или "HR", и вывести только их имена, ограничив выборку первыми двумя в списке.
db.employees4.find({position:{$in:["HR","Manager"]}}).limit(2) 
//5. Найти сотрудников с зарплатой выше 5000, пропустив первого сотрудника из выборки, и вывести только их имена.
db.employees4.aggregate([
    {$match: {salary: {$gt: 5000}}},
    {$project: {name: 1,_id:0}} 
])
//6. Увеличить зарплату на 2000 для всех сотрудников, занимающих должность "Developer".
db.employees4.updateMany({position: {$eq: "Developer"}}, {$inc: {salary: 2000}})
//7. Добавить новое поле "manager" для всех сотрудников и задать значение "Alice".
db.employees4.updateMany({}, {$set: {manager: "Alice"}})
//8. Изменить значение поля "manager" на "Helen" для сотрудников, занимающих должность "HR".
db.employees4.updateMany({position: {$eq: "HR"}}, {$set: {manager: "Helen"}})
//9. Уменьшить зарплату на 500 для сотрудника по имени "Charlie".
db.employees4.updateMany({name: {$eq: "Charlie"}}, {$inc: {salary: -500}})
//10. Удалить поле "manager" у всех сотрудников.
db.employees4.updateMany({},{$unset:{manager:1}})