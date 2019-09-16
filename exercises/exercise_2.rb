require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
query = Store.where(id: "2")
@store1.update(name: "Canmore")

# puts @store2.inspect
# puts "What is in store 2? #{@store2[0].name}"
puts "Store 1 is now #{@store1[:name]} and store 2 is still #{query[0].name}"

puts 