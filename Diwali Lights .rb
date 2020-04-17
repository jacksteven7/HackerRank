#!/bin/ruby

def lights(n)
    (2 ** n - 1) % 100000
end

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = lights n

    p result
end
