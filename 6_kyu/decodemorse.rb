def decodeMorse(morseCode)
  answer = ''
  morseCode.gsub!('   ', ' NW ')
  morseCode.split.each { |letter| answer = letter == 'NW' ? "#{answer} " : "#{answer}#{MORSE_CODE[letter]}" }
  answer.strip
end
