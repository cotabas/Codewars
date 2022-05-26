function domainName(url){
  url = url.replace('http://', '');
  url = url.replace('https://', '');
  let dot_array = url.split('.');
  return dot_array[0] == 'www' ? dot_array[1] : dot_array[0];
}

// I guess it's not the best to change the original input
// there's a better way to do this with string together
// methods. also this wouldn't work in the real world..
