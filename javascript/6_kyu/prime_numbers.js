function isPrime(num) {
  if (num <= 1) { return false; }
  if (num == 2) { return true; } // ¯\_(ツ)_/¯

  for (let i = 2; i <= Math.ceil(Math.sqrt(num)); i++) {
    if (num % i == 0) { return false; }
  }
  return true;
}
