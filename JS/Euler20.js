
<script src="http://peterolson.github.com/BigInteger.js/BigInteger.min.js"></script>

function factorial(x) {
  var product = 1;
  for (var i = 1; i <= x; i++) {
    product *= i;
  }
  return product;
}

function sumOfDigits(x) {
  const str = String(x);
  const len = str.length;
  var sm = 0;
  for (var i = 0; i < len; i++) {
    sm += parseInt(str[i]);
  }
  return sm;
}
