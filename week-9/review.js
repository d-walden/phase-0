// Separate Numbers with Commas


// Pseudocode
// input: integer
// output: string
// steps:
// define function
// convert integer to string
// reverse string
// put string characters in array
// iterate through array
// every 4 character insert comma
// reverse array
// combine array into single string
// return string


// Initial Solution
// var separateComma = function(input_integer) {
//   var i = input_integer.toString();
//   var characters = i.split("");
//   var rev_characters = characters.reverse();
//   var add_comma = [];
//   for (var counter = 0; counter < rev_characters.length; counter++){
//     if ((counter+1) % 4 == 0)
//       add_comma = rev_characters.splice(counter, 0, ',');

// //     if ((counter+1) % 4 == 0)  {
// //        add_comma = ',';
// //     }  else {
// //        add_comma[counter] = rev_characters[counter];
// //     }

//   }

//   return rev_characters.reverse().join("");

//   // console.log(add_comma);
// }



// Refactored Solution

var separateComma = function(input_integer) {
  var i = input_integer.toString();
  var characters = i.split("");
  var rev_characters = characters.reverse();
  for (var counter = 0; counter < rev_characters.length; counter++){
    if ((counter+1) % 4 == 0)
      rev_characters.splice(counter, 0, ',');
  }

  return rev_characters.reverse().join("");

}




// Your Own Tests (OPTIONAL)

console.log(separateComma(2234998759675));



// Reflection
// • What concepts did you solidify in working on this challenge?
// I solidified the concept of creating functions in JavaScript.

// • What was the most difficult part of this challenge?
// This challenge was straightforward.

// • Did you solve the problem in a new way this time?
// No I solved it in the same way as before.

// • Was your pseudocode different from the Ruby version? What was the same and what was different?
// The pseudocode is similar to the Ruby version.
