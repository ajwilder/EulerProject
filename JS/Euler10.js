var primeSum = 0;
for (var i = 2; i < 2000001; i++) {
  var multiple = 0;
  inner:
  for (var j = 2; j <= Math.sqrt(i); j++) {
    if (i % j == 0) {
      multiple++;
      break inner;
    }
  }
  if (multiple == 0) primeSum += i;
}
console.log(primeSum);
