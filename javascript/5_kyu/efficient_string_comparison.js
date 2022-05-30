function scramble(str1, str2) {
  let test_string = 'abcdefghijklmnopqrstuvwxyz';

  for (let i = 0; i < test_string.length; i++) {
    let reggy = new RegExp(test_string[i], 'g');
    let letter_str1 = 0;
    let letter_str2 = 0;
    if (str1.match(reggy) != null) { letter_str1 = str1.match(reggy).length }
    if (str2.match(reggy) != null) { letter_str2 = str2.match(reggy).length }
    if (letter_str2 > letter_str1) { return false; }
  }
  return true;
}

// Feels good to figure this out..
