def printer_error(s)
  regex_is_cheating = 'nopqrstuvwxyz'
  #  (:
  errorz = s.chars.select { |char| regex_is_cheating.include?(char) }.length
  
  "#{errorz}/#{s.length}"
  
end
