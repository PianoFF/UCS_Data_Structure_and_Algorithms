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

  # (0..size_of_array-1).each do |i|
  #   if a[i] > test_item_1 
  #     test_item_1 = a[i]
  #   end
  # end
  
  
  # (0..size_of_array-1).each do |j|
  #   if (a.find_index(test_item_1) != j && a[j] > test_item_2)
  #     test_item_2 = a[j]
  #   end
  # end

  (0..size_of_array-1).each do |i|
    if a[i] > test_item_1
      test_item_2 = test_item_1 
      test_item_1 = a[i]
    elsif  a[i] > test_item_2
       test_item_2 = a[i]
    end
  end

  result = test_item_1 * test_item_2

  # print "Test items are #{test_item_1} and #{test_item_2}" + "\n"
  # print "Result of max pairwise product is #{result}"
  
  return result
end

# def strong_test 
#   while true do
#     n = []
#     items =  (rand() * 1000).floor
#     while items < 2
#       items =  (rand() * 10).floor
#     end

#     items.times do |i| 
#       i =  (rand() * 1000000).round
#       n << i
#     end

#     print "The array generated is #{n} \n"

#     test_result_1 = max_pairwise_product(n)
#     test_result_2 = max_pairwise_product_solution(n)

#     if test_result_1 != test_result_2
#       print "max_pairwise_product result = #{test_result_1} \n
#             max_pairwise_product_solution result = #{test_result_2}"
#       break
#     else  
#       print "All checked out \n"
#     end 
#   end
# end

# strong_test 

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  puts "#{max_pairwise_product_solution(a)}"
end