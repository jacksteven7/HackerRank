def maximumDraws(n)
  n+1
end
t = gets.to_i
t.times do |t_itr|
    n = gets.to_i
    result = maximumDraws n
    p result
end