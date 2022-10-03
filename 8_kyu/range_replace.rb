def fake_bin(s)
  s.chars.map { |num| num.to_i < 5 ? 0 : 1 }.join
end
