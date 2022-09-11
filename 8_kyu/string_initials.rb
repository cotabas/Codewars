def abbrev_name(name)
  name.split(' ').map { |n| n[0].upcase }.join('.')
end
