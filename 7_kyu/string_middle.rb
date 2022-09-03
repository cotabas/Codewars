def get_middle(s, l = s.length)
  l.even? ? s[l / 2 - 1, 2] : s[(l / 2).ceil]
end
