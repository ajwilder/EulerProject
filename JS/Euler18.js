const pyr1= "75"
const pyr2= "95 64"
const pyr3= "17 47 82"
const pyr4= "18 35 87 10"
const pyr5= "20 04 82 47 65"
const pyr6= "19 01 23 75 03 34"
const pyr7= "88 02 77 73 07 63 67"
const pyr8= "99 65 04 28 06 16 70 92"
const pyr9= "41 41 26 56 83 40 80 70 33"
const pyr10= "41 48 72 33 47 32 37 16 94 29"
const pyr11= "53 71 44 65 25 43 91 52 97 51 14"
const pyr12= "70 11 33 28 77 73 17 78 39 68 17 57"
const pyr13= "91 71 52 38 17 14 91 43 58 50 27 29 48"
const pyr14= "63 66 04 68 89 53 67 30 73 16 69 87 40 31"
const pyr15= "04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

var pyr = [];
for (i = 1; i < 16; i++) {
  var row = eval("pyr" + i)
  pyr.push(row.split(" ").map(numb => parseInt(numb)));
}


//Second day attempt now that I know the actual problem

function Euler18(pyr) {
  var len = pyr.length;
  for (var i = len - 1; i >= 0; i--) {
    for (var j = 0; j < pyr[i].length - 1; j++) {
      if (pyr[i][j] > pyr[i][j + 1]) pyr[i-1][j] += pyr[i][j];
      else pyr[i-1][j] += pyr[i][j + 1];
    }
  }
  return pyr;
}

// The above worked but only after I banged my head against the wall for 30 minutes because I accidently put i++ instead of j++ on line 29 and couldn't spot it. 



// Cannot get this to work with two calls to reduce.  Error message tells me that a.reduce is not a function.  I don't understand because it seems that a is an array, so why can't I call reduce on it?
function Euler18(pyramidArray) {
  pyramidArray.reduce((a,b) => {
    if (a.length == 1) init = a;
    else init = a.reduce(((c,d) => c > d ? c : d), 0);
    return init + b.reduce(((e,f) => e > f ? e : f), 0);
  }, [0, 0]);
}

//This works.
// Instead of reducing each inner array, I call Math.max on them and pass the array the second argument.  .apply method allows me to read this array as a collection of arguemnts.
function Euler18(pyramidArray) {
  return pyramidArray.map(array => Math.max.apply(null, array)).reduce(((a,b) => a + b), 0);
}

// NEVERMIND I READ THE PROBLEM WRONG. I WILL HAVE TO LOOK AT THIS ONE AGAIN TOMORROW.
// Good to attempt this with higher order functions though.
