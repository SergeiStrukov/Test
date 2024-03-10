let Name = document.querySelector(".Name")
let Surname = document.querySelector(".Surname")
let age = document.querySelector(".age")
let form = document.querySelector("form")
let usersContainer = document.querySelector(".Container")

let Users = []

form.addEventListener("submit", function (event) {
    event.preventDefault()
    console.log(Name.value);
    console.log(Surname.value);
    console.log(age.value);
    let Human = {
        Name : Name.value,
        Surname : Surname.value,
        Age : age.value
    }
    Users.push(Human)
    console.log(Users);
    rerender()
})

function rerender () {
    usersContainer.innerHTML = ""
    Users.forEach( function  (Human) {
    usersContainer.innerHTML += `
    <h5>${Human.Name}</h5>
    <h5>${Human.Surname}</h5>
    <h5>${Human.Age}</h5>
    `}
)}