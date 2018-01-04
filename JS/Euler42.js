var fs = require('fs');

var words = fs.readFileSync('p042_words.txt');

words = words.toString().replace(/"/g, '').split(',');


triangleNums = [];

for (var i = 1; i < 40; i++ ) {
  triangleNums.push(i / 2 * (i + 1))
}

var triangleWords = 0;

for  (var j = 0; j < words.length; j++) {
  var word = words[j];
  var sum = 0;
  for (var k = 0; k < word.length; k++) {
    sum += word[k].charCodeAt() - 64;
  }
  if (triangleNums.includes(sum)) triangleWords++
}

console.log(triangleWords);
