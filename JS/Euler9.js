function Euler9(n) {
  for (a = 1; a < n; a++) {
    for (b = 1; b < n; b++) {
      var c = Math.sqrt(a*a + b*b)
      if (a + b + c == n) return a + "," + b + "," + "," + c;
    }
  }
}
