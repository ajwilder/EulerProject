var fs = require('fs');

var names = fs.readFileSync('p022_names.txt');

names = names.toString().replace(/"/g, '').split(',');

names = names.sort();

function charCodeForName(name) {
  var sum = 0;
  for (var i = 0; i < name.length; i++) {
    sum += name[i].charCodeAt() - 64;
  }
  return sum;
};

var output = 0;
for (var i = 0; i < names.length; i++) {
  output += charCodeForName(names[i]) * (i + 1);
};

console.log(output);
