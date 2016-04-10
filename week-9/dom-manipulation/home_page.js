// DOM Manipulation Challenge


// I worked on this challenge [with: Shin Wang].


// Add your JavaScript calls to this page:

// Release 0:


// Release 1:
//document.getElementById("release-0").className = "done";


// Release 2:
var parent = document.getElementById("release-1");
var child = document.getElementById("p1");
parent.removeChild(child);

// Release 3:
document.getElementById("change").innerHTML = "I completed release 2.";

// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
//document.getElementById("release-4").style.fontSize = "xx-large";
//document.getElementByClassName("release-4").style.fontSize = "xx-large";
document.getElementsByClassName("release-4").style.backgroundColor = "#955251";

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));



// Reflection
// • What did you learn about the DOM?
// I learned that JavaScript is the standard language used to manipulate objects in the DOM. I learned about a number of useful built-in functions that can be used to manipulate HTML and CSS.

// • What are some useful methods to use to manipulate the DOM?
// Some useful methods used to manipulate the DOM include getElementById, removeChild, and appendChild.
