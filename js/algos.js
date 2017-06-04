// psuedocode longest phrase function
// create function
// create variables to hold longest word
// run .length on each item of the variable
// compare length of each item, storing current longest in variable1. when longest is found, store in var2
// return longest item

function findLongest(array) {
var longest = 0;
var longestWord = "";

for(var i=0; i < array.length; i++) {
    if (array[i].length > longest) {
        longest = array[i].length;
        longestWord = array[i]
      }
    }
  return longestWord;
}
var array = ["cat", "moth", "unicorn"];
console.log(findLongest(array));

var array = ["OMG this was challenging", "but I did it!", "finally"];
console.log(findLongest(array));


