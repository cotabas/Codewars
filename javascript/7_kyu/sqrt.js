var isSquare = function(n){
  answer = false;
  for (let i = 0; i <= n; i++) {
    if (n / i == i || n == 0) {
      answer = true;
      i = n + 1;
    }
  }
  return answer;
}

// the top answer was a one line answer using Math.sqrt.. which seems
// like that's not really the spirit of the problem
