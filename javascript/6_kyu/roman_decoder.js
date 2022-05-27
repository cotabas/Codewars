function solution (roman) {
  let answer = 0;
  for (let i = 0; i <= roman.length; i++) {
    switch (roman.split('')[i]) {
      case 'M':
        answer += 1000;
        answer = check_subtraction(i, answer, roman, 'M');
        break;
      case 'D':
        answer += 500;
        answer = check_subtraction(i, answer, roman, 'C');
        answer = check_subtraction(i, answer, roman, 'M');
        break;
      case 'C':
        answer += 100;
        answer = check_subtraction(i, answer, roman, 'C');
        break;
      case 'L':
        answer += 50;
        answer = check_subtraction(i, answer, roman, 'C');
        break;
      case 'X':
        answer += 10;
        answer = check_subtraction(i, answer, roman, 'V');
        break;
      case 'V':
        answer += 5;
        answer = check_subtraction(i, answer, roman, 'V');
        break;
      case 'I':
        answer += 1;
        break;
    }
  }
  return answer;
}

function check_subtraction (i, answer, roman, digit) {
  if (roman.split('')[i - 1] == 'I' && digit == 'V') {
          answer -= 2;
        }
  else if (roman.split('')[i - 1] == 'X'&& digit == 'C') {
          answer -= 20;
        }
  else if (roman.split('')[i - 1] == 'C'&& digit == 'M') {
          answer -= 200;
        }
 return answer;
}

// This is a hot mess but it worx and I want to go to bed..
