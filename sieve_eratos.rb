    answer = []
    limit = 3000000
    key = Array.new(limit, true)
    
    (2..Math.sqrt(limit).ceil).each do |num|
      i = 1
      rem = num ** 2
      if key[num] == true
        while rem <= limit do
          key[rem] = false
          rem = (num ** 2) + (i * num)
          i += 1
        end
      end
    end
    
    key.each_with_index do |boo, dex|
      answer << dex if boo == true && dex >= 2
    end
    
    answer.to_enum
    # I'll probably need this in the future
