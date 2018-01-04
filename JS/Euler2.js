function Euler2(n) {
  var sum = 0;
  var c = 0;
  for (var a = 1, b = 2 ; b < 50;c = b, b += a, a = c) {
    if (b % 2 == 0) sum += b;
  }
  return sum;
}
console.log(Euler2(4000000))
