// write a function that takes a str as a parameter and reverses the string (reverse("hello") will return "olleh")

// name function that takes string as a parameter
//  split string into array
// reverse string
// rejoin array back into string
// make sure the result is being returned

// call function on "hello"

var likesDogs = true;

function reverse(str) {
  return (str.split("").reverse().join(""));
}


if (likesDogs) {
console.log (reverse("hello!"))
}