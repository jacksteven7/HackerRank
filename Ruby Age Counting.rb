require 'net/http'
require 'uri'
require 'json'

uri = URI('https://coderbyte.com/api/challenges/json/age-counting')
response = Net::HTTP.get(uri)
data = JSON.parse(response)["data"].split(" ")
ages = data.map {|x| x.start_with?("age") ? x.split("=")[1][0..-2].to_i : nil}.compact
puts ages.select { |age| age >= 50}.count