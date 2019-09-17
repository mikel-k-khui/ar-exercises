require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

current_store = $stdin.gets.chomp

@storeNew = Store.create(
  name: current_store
  )

puts @storeNew.errors.messages