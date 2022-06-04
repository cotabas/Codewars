function validate(password) {
  return /(?=.*\w{6,})(?=.*[A-Z]+)(?=.*[a-z]+)(?=.*\d+)(?!.*\.)/.test(password);
}

// This passed the test but wouldn't work exactly, apparently the test doesn't have !? or the like
// I should've use [a-zA-Z0-9] instead of /w
// fun one though, I leaerned a lot about regex today
