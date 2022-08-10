def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  
  array1.each do |square|
    return false unless array2.include?(square ** 2)
    array2.delete_at(array2.index(square ** 2))
  end
  true
  
end
