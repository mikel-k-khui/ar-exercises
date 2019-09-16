require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)

puts "Average revenue per store is $#{@total_revenue/Store.count}"

puts "#{Store.where("annual_revenue >= ?", 1_000_000).count} store generates more than $1M in annnual revenue"