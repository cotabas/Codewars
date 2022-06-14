def top_3_words(text)
  answer = []
  final = []
  temp = []
  count = 0
  wordz = text.downcase.gsub(/[,\/.!?@#$%^&]/, '').split
  
  until wordz.size.zero?
    wordz.each do |first|
      count = 0
      wordz.each do |second|
        if first == second
          count += 1
          temp = [count, first] if /[a-z]/.match(first)
        end
      end
      answer << temp unless temp.size.zero?
      wordz.delete(first)
    end
  end
  answer.sort! { |x,y| y <=> x }
  answer.each { |pair| final << pair[1] unless final.size == 3 }
  final
end
