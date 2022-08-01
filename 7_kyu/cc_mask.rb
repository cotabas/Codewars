def maskify(cc)
#   answer = ''
#   return cc if cc.length < 5
#   cc[0..-5].length.times do
#     answer += "#"
#   end
#   answer + cc[-4..-1]
  cc[0..-5].length.times { |x| cc[x] = '#' } if cc.length > 4 
  cc
 # a teranary could've made this one line 
end
