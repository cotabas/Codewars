def count_smileys(arr)
  arr.map { |face| 
      [';', ':'].any?(face[0]) &&
      ['-', '~', ')', 'D'].any?(face[1]) &&
      ([')', 'D'].any?(face[2]) || face[2].nil?)    
    }.count(true)
end
