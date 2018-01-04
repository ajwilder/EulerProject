


/*BRUTE FORCE METHOD DOES NOT WORK */
function Euler3(n) {
  for (var i = n - 1; i != 0; i--) {
    if (n % i == 0) {
      var numbFactors = 0;
      for (var x = i-1; x != 2; x--) {
        if (i % x == 0) {
          numbFactors++;
          break;
        }
      }
      if (numbFactors == 0) return i;
    }
  }
  return n;
}

console.log(Euler3(13195))

/* MORE ELEGANT METHOD => FACTOR TREE DOWN TO A PRIME */
function Euler3(n) {
  var currentLargest = n, currentDivisor = 2, largestDivisor = n;
  while (currentLargest > currentDivisor) {
    if (currentLargest % currentDivisor == 0){
      currentLargest = currentLargest / currentDivisor;
      if (currentLargest > currentDivisor) largestDivisor = currentLargest;
      else largestDivisor = currentDivisor;
      // currentDivisor = 2;
    }
    else currentDivisor++;
  }
  return largestDivisor;
}

console.log(Euler3(13195))
