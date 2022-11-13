def solution(str, ending)
  (-ending.size..-1).each { |x| return false unless str[x] == ending[x]} ? true : false
end
