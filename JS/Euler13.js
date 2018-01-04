var fs = require('fs');
var big = require('big-integer');
var nums = fs.readFileSync('../euler13nums.txt');

var nums = nums.toString().split("\n");

var sum = big();

sum = nums.reduce((a,b) => big(a).add(big(b)));

console.log(big(sum).toString());
