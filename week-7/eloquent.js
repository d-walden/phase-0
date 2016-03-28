// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var greeting = "hello";
greeting = greeting + " David";
console.log(greeting);

// prompt("What is your favorite food?");
// alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle
var number_sign = "#";
for (var counter = 1; counter < 8; counter++) {
  console.log(number_sign);
  number_sign += "#";
}


// Functions

// Complete the `minimum` exercise.
function min(x, y) {
  if (x < y)
    return x;
  else
    return y;
}
console.log(min(0, -10));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "David",
  age: 26,
  favorite_foods: ["pizza", "icecream", "sushi"],
  quirk: "I twiddle my fingers when I'm bored.",
};
console.log(me);