# frozen_string_literal: true

class Q1
  intervals = [[0,30],[5,10],[15,20]]
  # intervals = [[7,10],[2,4]]
  intervals.sort!
  puts intervals
  ans = true
  for i in 0...1
    if intervals[i][1] > intervals[i][0]
      ans = false
    end
  end
  puts ans
end
