// psuedocode longest phrase function
// create function
// create variables to hold longest word
// run .length on each item of the variable
// compare length of each item, storing current longest in variable1. when longest is found, store in var2
// return longest item

function findLongestWord(array) {
  var char_count = 0;
  var longestWord = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > char_count) {
      char_count = array[i].length;
      longestWord = array[i];
    }
  }
  return longestWord;
}

var array = ["cat", "horse", "elephant"]
console.log(findLongestWord(array))

var array = ["cat", "moth", "unicorn"];
console.log(findLongestWord(array));

var array = ["OMG this was challenging", "but I did it!", "finally"];
console.log(findLongestWord(array));


//write a function that takes two objects (hashes) anc checks to see if they share at least one key-value pair
function anyMatches(hash1, hash2) {
  for (var i = 0, i < hash1.length, i++)
}
//if they share at least one key value pair, return as true
// if they do not share a key value pair, return as false
// function should take 2 objects as argument
// check to see if any keys match. if not, return false
// if any keys match, check those keys to see if their values match
// if not, return false
// if at least one key value pair matches, return true


// write a function that takes an integer for length, and returns an array of strings of the given length (so if we ran function with argument of 3, we'd get three random strings/words of letters back). Words should be of varying length from 1-10.
  //function(n) n is integer for length
  function generator(n){
    randomWords = [];
    //while loop count is < n,
    // make word of random letters a-z
    var word = "";
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    while (randomWords.length < n) {
      word = alphabet.charAt(Math.floor(Math.random() * alphabet.length))
    }
      // that is random length 1-10
        return Math.floor(Math.random() * 10 + 1);
      // store word to array
      randomWords << word
  }
// add driver code that does the following 10 times: generates array, prints array,feeds array through findLongestWord function, and prints result