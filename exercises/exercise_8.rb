require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
puts "Sample password is #{@store2.employees.create(first_name: "Steve", last_name: "Rogers", hourly_rate: 200)[:password]} for checking"