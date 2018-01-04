
function isInt(x) {
  return x % 1 === 0;
};

function factorsOf(x) {
  var factors = [];
  var max = Math.sqrt(x);
  if (isInt(max)) factors.push(max);
  for (var i = 2; i < max; i++) {
    if (x % i === 0) {
      factors.push(i, x/i);
    }
  }
  factors = factors.sort((a,b) => a > b ? 1 : -1);
  return factors;
};

function isPrime(n) {
  var x = Math.sqrt(n);
  for (var i = 2; i <= x; i++) {
    if (n % i === 0) return false;
  }
  return n > 1;
};
function primeFactorsOf(x) {
  var factors = factorsOf(x);
  var primeFactors = factors.filter(factor => {
    if (isPrime(factor)) return factor;
  })
  return primeFactors;
};


function factorial(x) {
  var product = 1;
  for (i = 1; i <= x; i++) {
    product *= i;
  }
  return product;
}



function panDigital(x) {
  var d = x.toString();
  var l = d.length;
  if ((d.indexOf(0) >= 0)) return false;
  for (var i = 1; i <= l; i++) {
    if (!(d.indexOf(i) >= 0)) return false;
    var r = RegExp(`${i}`, "g");

    r.exec(d);
    r.exec(d);
    var j = r.lastIndex;
    if (j !== 0) return false;
  }
  return d;
};

function panDigital(x,y) {
  var d = ""
  for (var j = 1; j <= y; j++){
    var a = j * x;
    var d = d + a.toString();
  }
  if ((d.indexOf(0) >= 0)) return false;
  for (var i = 1; i <= 9; i++) {
    if (!(d.indexOf(i) >= 0)) return false;
    var r = RegExp(`${i}`, "g");
    var l = r.lastIndex;
    r.exec(d);
    r.exec(d);
    if (r.lastIndex !== 0) return false;
  }
  return d;
};

function permutation(x,y) {
  var c = x.toString();
  var d = y.toString();
  var l = c.length;
  if (d.length != l) return false;
  for (var i = 0; i < l; i++) {
    if (!(d.indexOf(c[i]) >= 0)) return false;
  };
  for (var i = 0; i < l; i++) {
    if (!(c.indexOf(d[i]) >= 0)) return false;
  };
  return true;
};
