def find_even_index(arr)
  arr.each_with_index do |num, dex|
   return dex if (0..dex - 1).sum { |p| arr[p] } == ((dex + 1)..arr.length - 1).sum { |p| arr[p] }
  end
  -1
end
