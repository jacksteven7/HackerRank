#!/bin/ruby

arr = Array.new(6)
for i in (0..5)
    line = gets.strip
    arr[i] = line.split(' ').map(&:to_i)
end
max = -63
for i in 0..3
	for j in 0..3
	 aux = 0
	 aux =  arr[i][j]+arr[i][j+1]+arr[i][j+2]
	 aux += arr[i+1][j+1]
	 aux += arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2] 
	 if aux > max
	 	max = aux
	 end
	end
end
puts max
