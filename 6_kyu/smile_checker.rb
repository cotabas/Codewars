def count_smileys(arr)
  arr.map { |face| 
    
    (face[0] == ':' || face[0] == ';') && (face.include?(')') || face.include?('D')) }.count(true)
end
