def in_array(array1, array2)
  answer = []
  array1.each do |werd|
    array2.each do |word|
      answer << werd if word.include?(werd) && answer.none?(werd)
    end
  end
  answer.sort
  # I know there's a way to do this with select..
end
