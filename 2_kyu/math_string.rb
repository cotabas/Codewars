def calc expression
  expression.delete!(' ')
  
#   This line doesn't need to exsist, the loop checks for parenthesis **
  return exp(expression) unless /[\(\)]/.match(expression)
  
#   passes each expression within a set parenthesis 
  while /[\(\)]/.match(expression)
    hold = []
    start = ''
    finish = ''
    
    expression.each_char.with_index do |char, dex|
      if expression.index('(') >= dex
        next if dex == 0
        start = expression[0..dex - 1]
        next
      end
      
      if char == '('
        hold = []
        start = expression[0..dex - 1]
      end
      
      if char == ')'
        finish = dex == expression.size ? '' : expression[dex + 1..-1]
        break
      end
      hold << char 
    end

    expression = start + exp(hold.join).to_s + finish

  end
  
  exp(expression)
  
end

# Calculatates an expression without parenthesis
def exp(expression)
#   Todo: figure out why I seem to be the only one who declares a bunch of empty ***
#   variables at the begining of my functions.. maybe there's something about    ***
#   scope that I don't fully understand..                                        ***
  left = []
  right = []
  opp = []
  hold = []
  answer = 0
  first_done = false
  expression.each_char.with_index do |char, dex|
    hold << char if /[\d\.]/.match(char)
    if char == '-' && /[+\-\/*]/.match(expression[dex - 1])
#       Double negative
      if hold.join == '-'
        hold = []
        next
      end
#       Negative number
      hold << char
      next
    end
    
    if first_done == true && (/[+\-\/*]/.match(char) || dex == expression.size - 1)
      right << hold.join
      hold = []
      first_done = false
    end

    if /[+\-\/*]/.match(char) && first_done == false
      left << hold.join
      hold = []
      opp << char
      first_done = true
    end
  end
  return hold.join.to_f if left.empty?

  opp.each_with_index do |op, dex|
    break if opp.size == 1
    if op == '/' || op == '*'
      if left[dex] == '' && right[dex - 1] == ''
        left[dex - 1] = operator(op, left[dex - 1].to_f, right[dex].to_f)
      elsif left[dex] == ''
        right[dex - 1] = operator(op, right[dex - 1].to_f, right[dex].to_f)
      else
        left[dex] = operator(op, left[dex].to_f, right[dex].to_f)
      end
      opp[dex] = ''
      right[dex] = ''
    end
  end   

  opp.delete('')
  right.delete('')
  left.delete('')

  return left[0].to_f if opp.empty?
  
  opp.each_with_index do |op, dex|   
    answer = answer == 0 ? operator(op, left[dex].to_f, right[dex].to_f) : operator(op, answer.to_f, right[dex].to_f)
  end
  answer
end

#   Apperently there's a ruby method called send that does this.. ***
def operator(op, left, right)
  case op
  when '+'
    return left + right
  when '-'
    return left - right
  when '/'
    return left / right
  when '*'
    return left * right
  end
end
