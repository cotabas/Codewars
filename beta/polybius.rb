def encode message

  message.upcase.chars.map do |char|
    next unless char.ord.between?(65, 89)
    y = ((char.ord - 64) % 5) == 0 ? 5 : ((char.ord - 64) % 5)
    [((char.ord - 64) / 5.0).ceil, y]
  end.join
  
end

def decode code
  code.delete(' ').chars.each_slice(2).map { |set| (64 + ((set[0].to_i - 1) * 5) + set[-1].to_i).chr }.join
end
