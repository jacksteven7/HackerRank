#!/bin/ruby
require 'pry'
def solve(n)
  if n > FIBO.last
    while n > FIBO.last
       FIBO << FIBO[-1] + FIBO[-2]
    end
  end
  FIBO.include?(n) ? 'IsFibo' : 'IsNotFibo'
end

FIBO = [0,1,1,2,3,5]

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = solve n

    p result
end
