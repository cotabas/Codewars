def pangram?(string)
  'abcdefghijklmnopqrstuvwxyz'.chars.each { |letter| return false unless string.downcase.include?(letter) }.size == 26
end
