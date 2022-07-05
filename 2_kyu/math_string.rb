def calc expression
  p expression
  expression.delete!(' ')
  return exp(expression) unless /[\(\)]/.match(expression)
  
  hold = []
  start = ''
  finish = ''
  while /[\(\)]/.match(expression)
    expression.each_char.with_index do |char, dex|
      if expression.index('(') >= dex
        start = expression[0..dex - 1]
        next
      end
      if hold.size > 0 && char == '('
        hold = []
        start = expression[0..dex]
      end
      hold << char unless char == ')'
      if char == ')'
        finish = expression[dex + 1..expression.length]
        break
      end
    end
    expression = start + exp(hold.join).to_s + finish  
  end
  exp(expression)
end

def exp(expression)
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
  return hold.join.to_i if left.empty?
  p left
  p opp
  p right
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
  p left
  p opp
  p right
  return left[0] if opp.empty?
  opp.each_with_index do |op, dex|   
    answer = answer == 0 ? operator(op, left[dex].to_f, right[dex].to_f) : operator(op, answer, right[dex].to_f)
  end
  answer
end

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
