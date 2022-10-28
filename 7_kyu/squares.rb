def squares(x, n)
  return [] if n < 1
  
  answer = [x]
  (n - 1).times { |count| answer << answer[count] ** 2 }
  answer
end
