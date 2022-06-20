class Primes
  @i = 2
  @prime = true
  def self.stream
    loop do
    @prime = true
    @i += 1
    
    for count in (1..Math.sqrt(@i).ceil) do
     @prime = false if @i % count == 0
    end
    return @i if @prime
    end
  end
end
