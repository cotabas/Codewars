def solution(str)
  answer = []
  work = str.chars
  (str.length / 2).times { |count| answer[count] = work.shift + work.shift }
  
  answer << work[0] + "_" unless work.empty?
  
  answer
    
end
