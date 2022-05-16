def solution(number)
  return 0 if number < 0
  answer = 0
  (3..(number - 1)).each do |num|
    if num % 3 == 0
      answer += num
    elsif num % 5 == 0
      answer += num
    end
  end
  answer
end
