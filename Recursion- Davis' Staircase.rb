require 'json'
require 'stringio'
require 'pry'
def stepPerms(n)
  if SOLUTIONS[n].nil?
    SOLUTIONS[n] = n > 3 ? stepPerms(n-1) + stepPerms(n-2) + stepPerms(n-3) : [1,2,4][n-1]
  end
  SOLUTIONS[n]
end

s = gets.to_i
SOLUTIONS = { 1=>1, 2=>2, 3=>4 }
s.times do |s_itr|
    n = gets.to_i
    res = stepPerms n
    puts res.to_s
end
