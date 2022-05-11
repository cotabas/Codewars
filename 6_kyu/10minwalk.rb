def is_valid_walk(walk)
  x_axis = 0
  y_axis = 0
  walk.each do |dir|
    x_axis -= 1 if dir == 'w'
    x_axis += 1 if dir == 'e'
    y_axis += 1 if dir == 'n'
    y_axis -= 1 if dir == 's'
  end
  walk.length == 10 && x_axis == 0 && y_axis == 0
end
