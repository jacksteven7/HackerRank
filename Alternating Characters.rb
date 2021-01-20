#!/bin/ruby

require 'json'
require 'stringio'

# Complete the alternatingCharacters function below.
def alternatingCharacters(s)
  idx = 0
  deletions = 0
  while idx < s.length - 1
    if s[idx] == s[idx+1]
      s[idx] = ''
      deletions += 1
    else
      idx += 1
    end
  end 
  deletions
end

q = gets.to_i

q.times do |q_itr|
    s = gets.to_s.rstrip

    result = alternatingCharacters s

    p result
end