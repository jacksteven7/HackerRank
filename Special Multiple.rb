#!/bin/ruby
def solve(n)
  div = 1
  while true
    res = div.to_s(2).to_i*9
    return res if res % n == 0
    div += 1
  end
end
t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = solve n

    p result
end