#!/bin/ruby

# Complete the solve function below.
def solve(n, operations)
  arr = Array.new(n, 0)
  operations.each do |op|
    arr[op[0]-1] += op[2]
    arr[op[1]] = arr[op[1]] - op[2] if op[1]< n
  end
  prev = 0
  sum = 0
  arr.each_with_index do |a, idx|
    arr[idx] += prev
    prev = arr[idx]
    sum += arr[idx]
  end
  sum/n
end

=begin
  
5 3
1 2 100
2 5 100
3 4 100

  
=end

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

operations = Array.new(m)

m.times do |operations_row_itr|
    operations[operations_row_itr] = gets.rstrip.split(' ').map(&:to_i)
end

result = solve n, operations

p result
