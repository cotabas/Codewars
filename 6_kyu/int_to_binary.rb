def count_bits(n, b = '')
  n == 0 ? b.count('1') : count_bits(n / 2, b + (n % 2).to_s)
end
