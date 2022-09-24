def find_uniq(arr)
  arr.uniq.select { |num| arr.count(num) == 1 }[0]
end
