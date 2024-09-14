// 1 Анатолий Ушанов 28 m
// 2 Светлана Демидова 25 f
// 3 Никита Иванов 33 m
// 4 Ольга Петрова 22 f
db.users.insertMany([
    {
        "_id": 1,
        "first_name": "Анатолий",
        "last_name": "Ушанов",
        "age": 28,
        "gender": "m",
    },
    {
        "_id": 2,
        "first_name": "Светлана",
        "last_name": "Демидова",
        "age": 25,
        "gender": "f",
    },
    {
        "_id": 3,
        "first_name": "Никита",
        "last_name": "Иванов",
        "age": 33,
        "gender": "m",
    },
    {
        "_id": 4,
        "first_name": "Ольга",
        "last_name": "Петрова",
        "age": 22,
        "gender": "f",
    }]);