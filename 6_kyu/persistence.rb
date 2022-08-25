def persistence(n, count = 0)
  return n < 10 ? count : (persistence n.digits.inject { |total, num| total * num }, count + 1)
end
