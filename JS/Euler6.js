var x = 0;
for (i = 1; i < 101; i++) {
  x += i*i;
}
var y = 0;
for (i = 1; i < 101; i++) {
  y += i;
}
console.log(x);
console.log(y);
console.log(y*y);
console.log(y*y - x);
