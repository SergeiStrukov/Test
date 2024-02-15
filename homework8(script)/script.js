// Задача №1
// Написать цикл, который создает множество параграфов с каждым десятым числом в
// промежутке от 100 до 50 (т.е. 100, 90, 80, 70, 60, 50). 
// Добавить созданные параграфы в div с классом numbers.

const body1 = document.querySelector("body")
body1.innerHTML += `<div class="numbers"></div>` 
const numbers = document.querySelector(".numbers")

for (let i = 100; i >= 50; i=i-10) {
    numbers.innerHTML += `<p>${i}</p>`
}

// Задача №2
// Написать цикл, который проходится по массиву строк, 
// для каждой строки создает параграф и добавляет его 
// в div с классом strings_container. Строки взять произвольные.


// const names = document.querySelector(".strings_container")
// const arr = ["Sergey", "Maria", "Arsen", "Football"]

// for (let i = 0; i < arr.length; i++) {
//     names.innerHTML += `<p>${arr[i]}</p>` 
// }

// Задача №2 (2 Способ)
// Написать цикл, который проходится по массиву строк, 
// для каждой строки создает параграф и добавляет его 
// в div с классом strings_container. Строки взять произвольные.

const body = document.querySelector("body")
body.innerHTML += `<div class="strings_container"></div>` 

const div = document.querySelector(".strings_container")

const arr = ["Sergey", "Maria", "Arsen", "Football"]

for (let i = 0; i < arr.length; i++) {
    div.innerHTML += `<p>${arr[i]}</p>` 
}

// Задача 3
// Написать цикл, который проходится по массиву с объектами - 
// у объектов свойства first_name, last_name и  age 
// (данные взять произвольные) - и создает карточки только 
// для совершеннолетних пользователей. Карточка должна содержать 
// информацию об имени, фамилии и возрасте пользователя. Добавить 
// все карточки в div с классом users_container.


const users = [ 
{
    first_name : "Sergei",
    last_name : "Strukov",
    age : 29
},
{
    first_name : "Maria",
    last_name : "Strukova",
    age : 27
},
{
    first_name : "Olga",
    last_name : "Panina",
    age : 68
},
{
    first_name : "Pups",
    last_name : "Nik",
    age : 16
},
]
// const body = document.querySelector("body")
body.innerHTML += `<div class="users_container"></div>` // Использую по селектору body, созданный во второй задаче. Добавляю данный div в body.
const users_container = document.querySelector(".users_container")

for (let i = 0; i < users.length; i++) {
    if (users[i].age>=18) {
        users_container.innerHTML += `<p>${users[i].first_name}, ${users[i].last_name}, ${users[i].age}</p>`
    }
}