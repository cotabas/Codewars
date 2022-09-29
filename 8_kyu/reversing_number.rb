def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end
