var isPP = function(n){
  for (let i = 2; i < n; i++) {
    for (let j = 2; (i ** j) <= n; j++) {
      if (i ** j == n) {
        return [i, j];
      }
    }
  }
  return null;
}
//I don't need to use the brackets for single line for loops it seems
//I can also do if(condition) return something all in one line
