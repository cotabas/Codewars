class Primes
  limit =  16000000
  key = Array.new(limit, true)

  (2..Math.sqrt(limit).ceil).each do |num|
    next unless key[num] == true
    
    i = 1
    rem = num ** 2
    while rem <= limit do
      key[rem] = false
      rem = (num ** 2) + (i * num)
      i += 1
    end   
  end
  
  key[0], key[1] = false, false
  @answer = key.each_index.select { |dex| key[dex] == true }
  
  def self.stream
    @answer.to_enum
  end

end

# 16mil is a lot more than 1..
# Old man's sieve. I tried the atkins diet but I didn't understand it well enough to optimize
# It took me way too long to realize the sieve was being call more than once in the sttream method
