def rgb(r, g, b)
  answer = ''
  [r, g, b].each do |color|
    # make sure the color is in range
    color = 0 if color < 0
    color = 255 if color > 255
    
    # convert to two bit
    second =  color % 16
    first = color / 16
    
    # convert to hex A = 65
    second = (55 + second).chr if second > 9
    first = (55 + first).chr if first > 9
    
    answer = "#{answer}#{first}#{second}"
  end # I think I could have put .join('') here and ended each iteration with first and second 
      # instead of this answer business. Which I do frequently so that's exciting!
  answer
end
