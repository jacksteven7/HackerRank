#!/bin/ruby
require 'pry'
# Complete the solve function below.
def solve(n, m)
  m -= 1
  fac(n+m)/(fac(m)*fac(n)) % 1000000007
end

def fac(n)
  (1..n).inject(:*) || 1
end

t = gets.to_i

t.times do |t_itr|
    nm = gets.rstrip.split

    n = nm[0].to_i

    m = nm[1].to_i

    result = solve n, m

    p result
end
=begin
  
2
1 1
2 3

  
=end