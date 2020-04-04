def fibonacci(n)
  return n if n < 2
  fibonacci(n-2) + fibonacci(n-1) 
end

n = gets.to_i
puts (fibonacci(n))