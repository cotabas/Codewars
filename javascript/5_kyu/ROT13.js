function rot13(str) {
  let answer = '';
  let insert = 0;
  
  for (let i = 0; i < str.length; i++) {
    let char = str.charCodeAt(i);
    
    if (char >= 65 && char <= 90) {
      if (char + 13 > 90) {
        insert = (char + 13) - 90 + 64;
      } else {
        insert = char + 13;
      }
    } else if (char >= 97 && char <= 122) {
      if (char + 13 > 122) {
        insert = (char + 13) - 122 + 96;
      } else {
        insert = char + 13;
      }
    } else {
      insert = char;
    }
    answer += String.fromCharCode(insert);
  }
  
  return answer;
}
