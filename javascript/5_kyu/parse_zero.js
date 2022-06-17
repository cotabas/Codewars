function moveZeros(arr) {
  answer = arr.filter(function(zero) { return zero === 0; })
  answer.unshift(arr.filter(function(hero) { return hero !== 0; }))
  return answer.flat()
}
