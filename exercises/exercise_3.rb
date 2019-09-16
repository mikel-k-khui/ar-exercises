require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
store_to_be = Store.find_by(id: 3)
store_to_be.destroy

puts "There is #{Store.count} stores in Vancouver"
puts "Store 1 is still #{@store1[:name]} and store 2 is still #{@store2[:name]}"
