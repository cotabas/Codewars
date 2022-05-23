function narcissistic(value) {
  let answer = 0;
  value_long = String(value).length
  for (let i = 0; i <= (value_long - 1); i++) {
    answer += parseInt(String(value).charAt(i)) ** value_long
  }
  return (answer == value ? true : false)
}
