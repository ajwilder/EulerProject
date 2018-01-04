


function buildArray(x) {
  var array = [];
  for (var i = 0; i) {
    array.push(i);
  };
  return array;
};

function permutations(x, y) {
  var array = buildArray(x);
  var perms = [];

  for (var i = 0, i < y, i++) {
    for (var j = 0; j < array.length; j++) {
      var start = i + j;
      perms[i + j] = perms[i + j] + array[j].toString();
    }

  }
  return perms;

}
