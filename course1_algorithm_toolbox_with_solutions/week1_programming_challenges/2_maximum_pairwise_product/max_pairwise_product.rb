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
  
  size_of_input = a.size 

  
end


# if __FILE__ == $0
#   data = STDIN.read.split().map(&:to_i)
#   n = data[0]
#   a = data[1..n]
#   puts "#{max_pairwise_product(a)}"
# end