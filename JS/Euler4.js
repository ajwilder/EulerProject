function isPalindrome(n) {
  s = String(n);
  l = s.length;
  for (var i = 0; i < l/2; i++) {
    if (s[i] != s[l-i-1]) return false;
  }
  return true;
}

function larPal(n) {
  var a = n, b = n;
  var larPal = 0
  while (larPal == 0 && b > n-100) {
    if (isPalindrome(a * b)) {
      larPal = a * b;
      break;
    }
    else b--;
  }
  return larPal;
}

function Euler4(n) {
  var lar = 0;
  var factors = [];
  for (i = n; i >1; i--) {
    if (larPal(i) > lar) {
      lar = larPal(i);
      factors.push(i);
    }
  }
  return lar + " " + factors;
}

console.log(Euler4(999))
