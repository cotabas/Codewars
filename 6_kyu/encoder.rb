def duplicate_encode(word)
  word.downcase.each_char.map { |char| (word.downcase.scan(/[#{char}]/).size > 1) ? ')' : '(' }.join
end
