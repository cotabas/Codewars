def next_smaller n
  answer = 0
  num_array = n.to_s.chars.map(&:to_i)
  
  perm = n.to_s.chars.map(&:to_i).permutation.to_a.map(&:join).map(&:to_i).select { |num| num < n }
  p perm.max
#   return perm.max.nil? ? -1 : perm.max
  
#   num_array.permutation do |num|
#     next if num[0] == 0 || num[0] > num_array[0]
#     working = num.join.to_i
#     answer = working if working < n && working > answer
#   end
#   return -1 if answer == n || answer == 0
#   answer
end
