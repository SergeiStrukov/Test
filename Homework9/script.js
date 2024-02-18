// задача №1
// Создать кнопку и красный квадрат с размерами 200х200px. 
// При клике на кнопку менять у квадрата цвет заднего фона 
// на зеленый и уменьшать его до размеров 100х100px.
const square = document.querySelector(".square1")
const btn = document.querySelector(".btn1")

btn.addEventListener("click", function () {
    square.style.backgroundColor = "green"
    square.style.width = '100px'
    square.style.height = '100px'
})

// задача №2
// Создать кнопку и розовый квадрат с размерами 200х200px. 
// При клике на кнопку менять цвет на синий и выводить в консоль обновленный цвет квадрата.
const square2 = document.querySelector(".square2")
const btn2 = document.querySelector(".btn2")

btn2.addEventListener("click", function () {
    square2.style.backgroundColor = "blue"
    console.log("Синий");
})

// задача №3
// Создать кнопку и квадрат с размерами 150х150px. 
// При клике на кнопку увеличивать высоту и ширину квадрата на 20px.
const square3 = document.querySelector(".square3")
const btn3 = document.querySelector(".btn3")

btn3.addEventListener("click", function () {
    square3.style.width = '170px'
    square3.style.height = '170px' 
})

// задача №4
// Создать кнопку и div с классом root. При клике на кнопку в 
// div создается параграф синего цвета. Текст параграфа произвольный.
const div1 = document.querySelector(".root1")
const btn4 = document.querySelector(".btn4")

btn4.addEventListener("click", function () {
    div1.style.backgroundColor = "blue"
    showp1()
})

function showp1() {
    div1.innerHTML += `<p>many paragraphs in blue</p>`
}

// задача №5
// Создать кнопку и div с классом root. 
// При клике на кнопку в div создаются по очереди 
// параграфы синего и зеленого цветов. Первый цвет синий.
const div = document.querySelector(".root") // куда складываем элементы P.
const btn5 = document.querySelector(".btn5")

const paragraphs = []

btn5.addEventListener("click", function () {
    paragraphs.push('1')
    showp()
    console.log(paragraphs.length);
    paint()
})

function showp()  {    
        if (paragraphs.length%2==1) {
            div.innerHTML += `<p class="p1">many paragraphs in blue</p>`
    }
        else {
            div.innerHTML += `<p class="p2">many paragraphs in green</p>`
        }
    }

function paint() {
    const p1 = document.querySelectorAll('.p1')
    const p2 = document.querySelectorAll(".p2")

    p1.forEach(function (p1) {
    p1.style.backgroundColor = "blue"
} )
    p2.forEach(function (p2) {
    p2.style.backgroundColor = "green"
} );
}