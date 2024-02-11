// Задание 1
//Напишите функцию, которая принимает два числовых
//аргумента и возвращает наименьшее из них.

// function minNumber(a,b) 
// {
//     if (a<b) {
//         return a
//     }
//     else if (a===b){
//         return '='
//     }
//     else {
//         return b
//     }
// }

// let result = minNumber(1,5)
// let result2 = minNumber(111,11)
// let result3 = minNumber(5,5)
// console.log(result);
// console.log(result2);
// console.log(result3);

// Задание 2
// Напишите функцию, которая принимает два числовых
// аргумента и выводит в консоль все четные числа от большего
// к меньшему.

// function checkNumbers(a,b) 
// {
// let start
// let end
//     if (a<b) {
//         start = b
//         end = a
//     }
//     else if (a==b){
//         console.log('=');
//     }
//     else {
//         start = a
//         end = b
//     }
//     for (let i = start; i > end; i=i-1) {
//         if (i%2==0) 
//         {
//             console.log(i);
//         } 
//     }
// }

// checkNumbers(7,5)
// checkNumbers(71,5)
// checkNumbers(5,5)

// Задание 3 
// Напишите функцию power, которая принимает два числовых
// аргумента (основание степени и саму степень) и возвращает
// число в указанной степени. Значение степени должно быть
// указано по умолчанию 2.

// function power(a,x) {
//     return a**x
    
// }

// let result = power(6,2)
// console.log(result);

// Задание 4
// Напишите функцию, которая принимает числовой аргумент n и
// считает сумму чисел от 1 до n.

// function summa(n) {
//     let sum = 0
//     for (let i = 1; i <= n; i++) {
//         sum+=i 
//     }
//     return sum
// }

// let summa1 = summa(10)
// console.log(summa1);
// let summa2 = summa(5)
// console.log(summa2);

// Задача №5
// Напишите функцию, которая принимает два числовых
// аргумента n и m и считает сумму четных чисел и нечетных
// чисел от n до m. Суммы выведите в консоль (в начале сумму
// четных чисел, а затем сумму нечетных).

// function summa (n, m) {
// let evennumbers = 0
// let oddnumbers = 0
// if (n<=m) {
//     start = n
//     finish = m
// } else {
//     start = m
//     finish = n
// } 
// for (let i = start; i <= finish; i++) {
//     if (i%2==0) {
//         evennumbers+=i
//     }
//     else {
//         oddnumbers+=i
//     }
// }
// console.log(evennumbers);
// console.log(oddnumbers);
// }

// summa(5,10)
// summa(8,1)
// summa(8,8)


// Задача №6
// Напишите функцию, которая принимает в качестве аргументов
// массив строк, а возвращает первый самый длинный элемент
// массива. Если входной массив пуст, функция возвращает null.
// Если есть несколько одинаковых по длине элементов -
// функция возвращает первый из этих элементов.


function arr (array) {

let max = 0
let longest = ''
for (let i = 0; i < array.length; i++) {
    if (array[i].length>max) {
        max=array[i].length
        longest=array[i]
    } 
}
if (max == 0) {
    longest='null'}

return longest
}

let result = arr (["one","two","three","homaa"])
let result1 = arr ([])
console.log(result);
console.log(result1);
