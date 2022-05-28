function findOdd(A) {
  for (let i = 0; i <= A.length; i++) {
    let count = 0;
    for (let x = 0; x <= A.length; x++) {
      if (A[i] == A[x]) {
        count++;
      }
    }
    if (count % 2 != 0) { return A[i]; }
  }
}
// What I learned from Codewars: how to solve anything with for loops..
// I was going to use forEach() but it doesn't seem to work like ruby

// would've been smarter to compare and remove pairs from the array
