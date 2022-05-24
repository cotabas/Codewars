function digital_root(n) {
  let str_n = String(n);
  let answer = 0;
  for (let i = 0; i <= str_n.length - 1; i++) {
    answer += parseInt(str_n.charAt(i));
  }
  return (String(answer).length == 1 ? answer : digital_root(answer))
}

// better probably to have answer < 10 in the return terinary statement.
// interesting to see how I was thinking about it entirely as a string
