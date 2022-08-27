def positive_sum(arr)
  arr.sum { |x| x.positive? ? x : 0 }
end
