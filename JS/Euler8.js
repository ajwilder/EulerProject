function Euler8(n) {

  const l = n.length;
  console.log(l);
  var store = 1;
  for (i= 0; i < l - 14; i++) {
    var product = 1;
    for (j = i; j < i+13; j++) {
      product = product * n[j];
    }
    if (product > store) store = product;
  }
  return store;
}
