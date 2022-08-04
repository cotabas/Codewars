def dig_pow(n, p)
  answer = 0
  n.to_s.each_char do |num|
    answer += num.to_i ** p
    p += 1
  end
  return -1 unless answer % n == 0
  answer / n
end
