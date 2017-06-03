// psuedocode longest phrase function
// define var array
// split each item into it's own variable
// run .length on each item of the variable
// compare length of each item
// return longest item

var words = ["cat", "moth", "unicorn"]

function findLongWord(array) {
  // var str = words.join(" ")
  // console.log(str)
  var word
  var longestWord
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > word) {
      word = array[i].length;
      console.log(longestWord = array[i])
    }
  }

}

console.log(findLongWord(words))
// var words = ["cat", "moth", "unicorn"]
// console.log(words)
// var str = words.join(" ")
// console.log(str)
// //console.log(str.length)
// var word1 = str.split(" ")[0];
// var word2 = str.split(" ")[1];
// var word3 = str.split(" ")[2];

// console.log(word1)

// if (word1.length > word2.length) {
//   console.log(word1)
// }

// var words = ["cat", "moth", "unicorn"]

// for (var i = 0; i < words.length; i++) {
// var word1 = words[i][0];
// var word2 = words[i][1];
// var word3 = words[i][2];
// }

// console.log(word3)

