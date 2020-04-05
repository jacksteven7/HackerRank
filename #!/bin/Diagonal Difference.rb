#!/bin/ruby

require 'json'
require 'stringio'


def diagonalDifference(arr)
    first = last =0
    arr.each_with_index do |row, i|
      first += row[i]
      last += row[arr.size-i-1]
    end
    (first-last).abs
end

n = gets.strip.to_i
arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

p result
