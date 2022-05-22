function likes(names) {
  let name_count = names.length;
  let answer = '';
  switch (name_count) {
    case 0:
      answer = 'no one likes this';
      break;
    case 1:
      answer = names[0] + ' likes this';
      break;
    case 2:
      answer = names[0] + ' and ' + names[1] + ' like this';
      break;
    case 3:
      answer = names[0] + ', ' + names[1] + ' and ' + names[2] + ' like this';
      break;
    }
    if (name_count > 3) {
      answer = names[0] + ', ' + names[1] + ' and ' + (name_count - 2) + ' others like this';
    }
  return answer;
}
