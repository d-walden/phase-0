  // JavaScript Olympics

// I paired [with: Alex Wen] on this challenge.

// This challenge took me [#] hours.


// Warm Up



// Bulk Up
var athlete_1 = {
  name: "Sarah",
  event: "Swimming Event"
}

var athlete_2 = {
  name: "John",
  event: "Running Event"
}

var athleteArray = [athlete_1, athlete_2];
// console.log(athleteArray);

function adding_win(athleteArray){

  for (var i = 0; i < athleteArray.length; i++) {
    athleteArray[i].win = athleteArray[i].name + " won the " + athleteArray[i].event + "!";
    console.log( athleteArray[i].win )
  }
}

// console.log (adding_win(athleteArray));
// console.log(athlete);



// Jumble your words

function reverse(string){
  var reversed_string = string.split("").reverse().join("");
  return reversed_string

}
// console.log(reverse("testword"))



// 2,4,6,8
function even_numbers(integer_array){
  var even_array = [];
  for (var i = 0; i < integer_array.length; i++) {
    if (integer_array[i] % 2 == 0)
      even_array.push(integer_array[i]);

  }
return even_array
}

// console.log(even_numbers([1,2,3,4]));



"We built this city"
function Athlete(){
  this.name = "Michael Phelps"
  this.age = 29
  this.sport = "swimming"
  this.quote = "It's medicinal I swear!"
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// • What JavaScript knowledge did you solidify in this challenge?
// This challenge solidified my knowledge of how to use for loops to iterate through arrays in JavaScript.

// • What are constructor functions?
// Constructor functions allow you to define objects with multiple properties and methods. Constructors create the framework for objects, not the object itself.

// • How are constructors different from Ruby classes (in your research)?
// Constructors are different from Ruby classes because they define a class, but do not belong to a class. New objects created from a constructor have the properties defined by the constructor.