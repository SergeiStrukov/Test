// Задача 1
// for (let i = 0; i <= 10; i=i+2) 
// {
//     console.log(i);
// }

// Задача 2

// for (let i = 55; i >= 20; i=i-1) 
// {
//     console.log(i); 
// }

// задача 3,4

// const numbers = [3,5,11,2,8,1,6];

// for (let i = 0; i < numbers.length; i++) {
//     console.log(numbers[i])
// }

// let numbers_squared = [];
// for (let i = 0; i < numbers.length; i++) {
//     numbers_squared.push(numbers[i]**2)
    
// }
// console.log(numbers_squared);

// const last_elem = numbers_squared[6];
// console.log(last_elem);

// задача 5
const user = {
    first_name: 'Ivan', 
    last_name: 'Ivanov', 
    age: 20, 
    salary: 500
    }

// интерполяция
console.log(`User's name is ${user.first_name} ${user.last_name}. He is ${user.age} years old`);

// конкатенация
console.log("User's name is " + user.first_name + " " + user.last_name + ". He is " + user.age + " years old");
