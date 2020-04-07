#!/bin/ruby
#158260522
require 'pry'
def divisors(n)
  res = 0
  div = 2
  return 0 if n.odd? 

  while div <= Math.sqrt(n) do
   res += 1 if n % div == 0 && div.even?
   p "n #{div}"  if n % div == 0 && div.even?
   res += 1 if n % (n/div) == 0 && (n/div).even? && (n/div) != div
   p "(n/div) #{(n/div)}" if n % (n/div) == 0 && (n/div).even?
   div += 1
  end

  res + 1
end

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = divisors n

    p result
end
