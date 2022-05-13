def max_sequence(arr)
  answer = 0
  arr.each_with_index do |start, dex|
    totes = start
    answer = totes if totes > answer
    (1..(arr.length - dex - 1)).each do |count|
      totes = arr[dex + count] + totes if (dex + count) > 0
      answer = totes if totes > answer
      answer = arr[dex + count] if arr[dex + count] > answer
    end
  end
    answer
end
