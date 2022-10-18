def number lines
  lines.map.with_index { |val, dex| "#{dex + 1}: #{val}" }
end
