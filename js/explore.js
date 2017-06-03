// write a function that takes a str as a parameter and reverses the string (reverse("hello") will return "olleh")

// function reverse(str) {
//   var backwardStr = "";
//   for (var i = str.length - 1; i >= 0, i--) {
//     backwardStr += str[i];
//   }
//   return backwardStr;
// }

// reverse("hello");


function reverse(str) {
  return str.split("").reverse().join("");
}

reverse("hello")