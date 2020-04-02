#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the luckBalance function below.

=begin
 
6 3
5 1
2 1
1 1
8 1
10 0
5 0

=end
def luckBalance(k, lucky, importance, total)
  luck = []
  importance.each_index.select{|i| 
    luck << lucky[i] if importance[i] == 1
    importance[i] == 1
  }
  total - luck.sort[0..-k-1].inject(0, :+)*2
end

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

lucky = Array.new(n)
importance = Array.new(n)
total = 0
n.times do |i|
    lucky[i], importance[i] = gets.rstrip.split(' ').map(&:to_i)
    total += lucky[i]
end

result = luckBalance k, lucky, importance, total

p result
