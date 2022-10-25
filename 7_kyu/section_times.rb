def gps(s, x)
  x.empty? ? 0 : x.map.with_index { |val, dex| x[dex + 1].nil? ? 0 : ((x[dex + 1] - val) * 3600) / s }.max.floor
end
