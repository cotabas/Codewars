def sum_of_intervals(intervals)
  answer = 0
  longth = 0
  until longth == intervals.length
    longth = intervals.length
    intervals.sort!.each_index do |n|
      break if intervals[n + 1].nil?
      if intervals[n][1] > intervals[n + 1][0]
        intervals[n][1] = intervals[n + 1][1] if intervals[n + 1][1] > intervals[n][1]
        intervals.slice!(n + 1)
      end
    end
  end
  
  intervals.each_index { |n| answer += (intervals[n][0]..intervals[n][1]).size - 1 }
  answer
end
