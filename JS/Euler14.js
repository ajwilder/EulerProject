





function Euler14(n) {
  var seq = 0, max = 0;
  for (var i = 1; i < n; i++) {
    var count = 1, sum = i;
    while (sum != 1) {
      if (sum % 2 == 0) {
        sum /= 2;
        count++;
      }
      else {
        sum = (3 * sum) + 1;
        count++;
      }
    }
    if (count > seq) {
      seq = count;
      max = i;
    }
  }
  return max;
}

var count = 1, sum = 13;
while (sum != 1) {
  if (sum % 2 == 0) {
    sum /= 2;
    count++;
  }
  else {
    sum = 3 * sum + 1;
    count++;
  }
}
