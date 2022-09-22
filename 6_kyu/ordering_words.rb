def order(words)
  words.split.max(words.split.length) { |b, a| a.match(/[1-9]/).to_s <=> b.match(/[1-9]/).to_s }.join(' ')
end
