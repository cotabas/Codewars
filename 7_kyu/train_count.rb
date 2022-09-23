def number(bus_stops)
  bus_stops.inject(0) { |total, each_stop| total - each_stop[1] + each_stop[0] }
end
