def reverse_fun(n)
  n_array = n.chars
  n.length.times.map { n_array.reverse!.shift }.join
end
