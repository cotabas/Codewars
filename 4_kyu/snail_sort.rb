def snail(array)
  # enjoy.. i did, but this is a mess.. but I'm real tired so a mess it will stay
  answer = []
  
  until array == []
    
# top
    answer << array.slice!(0)
    
# right
    if array.length == 1 
      answer << array[0].slice!(-1, 1)
    else
      array.each { |ray| answer << ray.slice!(-1, 1) } 
    end
    
# bottom  
    unless array == []
      if array.length == 1
        answer << array.slice!(-1)
      else
        test = array.slice!(-1)
        test.length.times { answer << test.slice!(-1, 1) } 
      end
    end
    
# left
    if array.length == 1
      answer << array.slice!(0, 1)
    else
      alright = []
      array.each { |ray| alright << ray.slice!(0, 1) } 
      alright.length.times { answer << alright.slice!(-1) }
    end
  end
  
  answer.flatten
end
