def summation(num, sum = 0)
  num == 0 ? sum : summation(num - 1, sum + num)
end
