function solution(list){
  let answer = '';
  let start_hold = 0;
  let end_hold = 0;

  for (let i = 0; i < list.length; i++) {
    if (list[i] + 1 == list[i + 1] && list[i] + 2 == list[i + 2]) {
      start_hold = list[i];
      for (let x = i; x <= list.length; x++) {
        if (list[x] + 1 == list[x + 1]) {
          end_hold = list[x + 1];
        } else {
          i = x;
          answer += start_hold + "-" + end_hold + ',';
          break;
        }
      }
    } else { answer += list[i] + ','; }
  }
  return answer.slice(0, -1);
}
