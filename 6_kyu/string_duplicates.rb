def duplicate_count(text)
  answer = []
  count = []
  text.downcase.chars do |char|
    if answer.include?(char)
      count << char
    else
      answer << char
    end
  end
  
  count.uniq.length

end
