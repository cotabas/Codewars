def high_and_low(numbers)
  [-1, 0].map { |x| numbers.split.map(&:to_i).sort[x] }.join(' ')
end
