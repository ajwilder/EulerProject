var numNames = ["one",
"two",
"three",
"four",
"five",
"six",
"seven",
"eight",
"nine",
"ten",
"eleven",
"twelve",
"thirteen",
"teen",
"fifteen",
"twenty",
"thirty",
"forty",
"fifty",
"sixty",
"seventy",
"eighty",
"ninety",
"hundred",
"and"];


var numNums = numNames.map(num => num.length);

function numCheck(i) {
  if (i <= 13) return numNums[i-1];
  if (i ==15) return numNums[i-1];
  if (i == 14) return numNums[13] + numNums[i-11];
  if (i < 20 && i > 15 && i != 18) return numNums[13] + numNums[i-11];
  if (i === 18) return 8;
  if (i < 100 && i >= 20) {
    if (i % 10 == 0) return numNums[i/10 +13];
    return numNums[Math.floor(i / 10) + 13] + numNums[i % 10 - 1];
  }
  if (i % 100 == 0) {
    var sum = numNums[i/100 - 1];
    sum += numNums[23]
    return sum;
  };
  if (i > 100 && i % 100 !== 0) {
    sum = numNums[Math.floor(i/100) - 1];
    sum += numNums[23];
    sum += numNums[24];
    return sum;
  };
}

function euler17() {
  var sum = 0;
  var hundredSum = 0;
  for (var i = 1; i < 1000; i++) {
    sum += numCheck(i);
    if (i === 99) {
      hundredSum = sum;
      debugger;
    }
    if (i % 100 == 0) sum += hundredSum;
  }
  sum += 11;
  return sum;
}
console.log(euler17());
