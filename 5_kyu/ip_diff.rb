def ipsBetween(start, ending) 
  [start, ending].map { |ip| ip.split('.').reverse.pop(3).map.with_index { |sec, dex| sec.to_i * (256 ** (dex + 1)) }.sum + ip.split('.')[3].to_i }.inject { |s, f| f - s }
#   [start, ending].map { |ip| ip.split('.').reverse.map.with_index { |sec, dex| sec.to_i * 256 ** dex }.sum }.inject { |s, f| f - s }
end
