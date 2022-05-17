def cakes(recipe, available)
  answer = {}
  return 0 if available.empty?
  recipe.each do |key, value|
    return 0 unless available.keys.include?(key)
    answer[key] = available[key] / recipe[key]
  end
  answer.min_by {|k, v| v}[1]
end
