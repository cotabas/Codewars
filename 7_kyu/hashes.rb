def hashlife(array)
  array.map.with_index { |val, dex| '#' * val + array[dex + 1][val..-1] if val.class == Integer }.compact
end
