def open_or_senior(data)
  data.map { |pair| pair[0] >= 55 && pair[1] > 7 ? 'Senior' : 'Open' }
end
