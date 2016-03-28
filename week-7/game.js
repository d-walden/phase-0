 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
//  The user must guess the location of a number in a 5x5 array.
// Goals:
//  Create an array of 0s
//  Randomly replace one of the 0s with a 1
//  Have the user guess the location of the 1
// Characters:
//  Array
//  Random location
//  User guess
// Objects:
//  Array
//  Random row number
//  Random column number
//  User guess
// Functions:
//  Randomly add a 1 to array
//  Prompt user and compare guess to actual location

// Pseudocode
//  Define array of 0s
//  Define an empty location object
//  Create a function that generates a random number
//  Call function to generate random location
//  Update random array location (value) with a 1
//  Define an empty guess object
//  Create a function that prompts the user to guess the location of the 1
//  Update guess object with user input
//  Compare user's guess to actual location
//  IF correct, congratulate the user
//  ELSE tell the user to guess again



// Initial Code
// var array = [
//   [0, 0, 0, 0, 0],
//   [0, 0, 0, 0, 0],
//   [0, 0, 0, 0, 0],
//   [0, 0, 0, 0, 0],
//   [0, 0, 0, 0, 0],
// ]

// var location = {};

// function create_random() {
//   var random_float = Math.random();
//   if (random_float >= 0 && random_float < 0.2)
//     var random_integer = 0;
//   else if (random_float >= 0.2 && random_float < 0.4)
//     var random_integer = 1;
//   else if (random_float >= 0.4 && random_float < 0.6)
//     var random_integer = 2;
//   else if (random_float >= 0.6 && random_float < 0.8)
//     var random_integer = 3;
//   else
//     var random_integer = 4;
//   return random_integer;
// }

// location.row = create_random();
// location.column = create_random();

// array[location.row][location.column] = 1;

// var guess = {row: 0, column: 0};
// function guess_location() {
//   while (guess.row != location.row || guess.column != location.column) {
//     // guess.row = prompt('Guess a row');
//     // guess.column = prompt('Guess a column');

//     // simulated guess
//     guess.row = create_random();
//     guess.column = create_random();
//     // if (array[guess.row][guess.column] == 'X')
//       // alert('You already guessed that');
//     // else
//       array[guess.row][guess.column] = 'X';
//       // alert('Guess again');
//     console.log(array);
//   }
//   // alert('Congratulations, you found the 1!!!');
//   console.log('Congratulations, you found the 1!!!');
// }

// guess_location();

// console.log(array);



// Refactored Code

var array = [
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
];

function create_random() {
  var random_integer = Math.floor(Math.random() * 5);
  return random_integer;
}

var location = {};
location.row = create_random();
location.column = create_random();

array[location.row][location.column] = 1;

var guess = {row: 0, column: 0};

function guess_location() {
  while (guess.row != location.row || guess.column != location.column) {
    array[guess.row][guess.column] = 'X';

    // simulated guess
    guess.row = create_random();
    guess.column = create_random();

    console.log(array);
  }
  console.log('Congratulations, you found the 1!!!');
}

guess_location();



// Reflection
//
//• What was the most difficult part of this challenge?
// The most difficult part of this challenge was figuring out how to test run the program.

// • What did you learn about creating objects and functions that interact with one another?
// I learned that you always need to use the keyword “var” to initialize new variables.

// • Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I learned how to use Math.random() and Math.floor() to randomly generate an integer. Math.random() returns a random float between 0 and 1, and Math.floor() rounds down to the nearest whole number.

// • How can you access and manipulate properties of objects?
// You can access and manipulate properties of objects by using a dot or brackets.
