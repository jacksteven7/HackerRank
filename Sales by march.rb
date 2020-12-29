#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  socks = {}
  ar.each do |sock|
    socks[sock] = socks[sock].nil? ? 1 : socks[sock] + 1
  end
  pairs = 0
  socks.each do |idx, sock|
    pairs += sock/2
  end
  pairs
end

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

p result
 