def string_to_number(s)
  answer = 0
  negative = s[0] == '-' ? true : false
  s.reverse.chars.each_with_index do |num_string, dex|
    10.times do |digit|
      answer += digit * (10 ** dex) if num_string == digit.to_s
    end
  end  
  negative ? -answer : answer
end
