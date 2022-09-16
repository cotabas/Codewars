def deadAntCount(ants)
  ants.nil? ? 0 : 'ant'.chars.map { |bit| ants.gsub('ant', '').count(bit) }.max
end
