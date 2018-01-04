var primes = [];
for (var i=2; primes.length < 10002; i++) {
  var multiple = 0;
  inner:
  for (var j = 2; j <= Math.sqrt(i); j++) {
    if (i % j == 0) {
      multiple++;
      break inner;
    }
  }
  if (multiple == 0) primes.push(i);
}

console.log(primes[10000])
