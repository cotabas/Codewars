def count_smileys(arr)
  arr.map { |face| 
      [';', ':'].any?(face[0]) &&
      ['-', '~', ')', 'D'].any?(face[1]) &&
      [')', 'D', nil].any?(face[2])
    }.count(true)
end
