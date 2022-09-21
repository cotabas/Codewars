def is_isogram(string)
  string.upcase.chars.uniq.length == string.length
end
