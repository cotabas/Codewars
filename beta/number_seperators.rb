def localize_number(str)
  dec = 0
  seperators = str.scan(/[,. ]/)
  
  return str.to_f unless /[,.\s]/.match(str)
  return str.scan(/[0-9]/).join.to_i if seperators.uniq.length == 1 && seperators.uniq.length != seperators.length
  
  seperators.each do |seperator|
    dec = str.index(seperator)
    str.slice!(dec)
  end
  "#{str[0..dec - 1].scan(/[0-9]/).join}.#{str[dec..-1]}".to_f
  
end
