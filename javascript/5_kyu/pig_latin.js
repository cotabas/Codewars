function pigIt(str){
  let answer = '';
  let wordz = str.split(' ');
  for (let i = 0; i < wordz.length; i++) {
    let werd = wordz[i].split('');
    if (/[a-zA-Z]/g.test(werd)) {
      let first = werd.shift();
      answer += werd.toString().replace(/,/g, '') + first + 'ay ';
    } else {
      answer += werd;
    }
  }
  return answer.trim();
}

// Someone did this with one replace function and regEx
// I need to learn the enumerables is JS, they don't seem to work the same as ruby
// I basically recreate the each function for all on these solutions
