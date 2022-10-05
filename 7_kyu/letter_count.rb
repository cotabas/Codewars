def accum(s)
	s.chars.map.with_index { |let, dex| let.upcase + let.downcase * (dex) }.join('-')
end
