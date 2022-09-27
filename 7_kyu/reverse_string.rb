def reverse_words(str)
  str.split(/ /).map(&:reverse).join(' ')
end
