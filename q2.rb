# frozen_string_literal: true

def top_k_frequent_numbers(arr, k)
  counts = Hash.new(0)
  arr.sort
  arr.each { |num| counts[num] += 1 }
  sorted_numbers = counts.keys.sort_by { |num| [-counts[num], -num] }
  sorted_numbers[0...k]
end



class Q2
  # Example usage:
  arr = [3, 1, 4, 4, 5, 2, 6, 1, 5, 5, 5]
  k = 3
  puts "Top #{k} numbers with most occurrences: #{top_k_frequent_numbers(arr, k)}"
end
