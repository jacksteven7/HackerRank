#!/bin/ruby

require 'json'
require 'stringio'
# Complete the minimumAbsoluteDifference function below.
=begin

5
1 -3 71 68 17


[-3, 1, 17, 68, 71]

=end
def minimumAbsoluteDifference(arr)
  res = 10 ** 9
  sorted = arr.sort
  sorted[1..-1].each_with_index do |num, i|
    res = [res, num-sorted[i]].min
  end
  res
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = minimumAbsoluteDifference arr
p result