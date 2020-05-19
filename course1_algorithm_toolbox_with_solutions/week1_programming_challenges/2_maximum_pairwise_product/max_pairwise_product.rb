#!/usr/bin/env ruby
# by Andronik Ordian

def max_pairwise_product(a)
  # naive implementation
  # replace it
  result = 0
  n = a.size
  (0..n-1).each do |i|
    (i+1..n-1).each do |j|
      if a[i]*a[j] > result
        result = a[i]*a[j]
      end
    end
  end
  result
end

def max_pairwise_product_solution(a)
  result = 0
  test_item_1 = 0
  test_item_2 = 0
  
  size_of_array = a.size 

  (0..size_of_array-1).each do |i|
    if a[i] > test_item_1 
      test_item_1 = a[i].to_i
    end
  end
  
  
  (0..size_of_array-1).each do |j|
    if (a.find_index(test_item_1) != j && a[j] > test_item_2)
      test_item_2 = a[j].to_i
    end
  end
  
  result = test_item_1 * test_item_2

  print "Test items are #{test_item_1} and #{test_item_2}" + "\n"
  print "Result of max pairwise product is #{result}"
  
  return result
end


# if __FILE__ == $0
#   data = STDIN.read.split().map(&:to_i)
#   n = data[0]
#   a = data[1..n]
#   puts "#{max_pairwise_product(a)}"
# end