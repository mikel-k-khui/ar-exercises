require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# stores = Store.joins(:employees)

# @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# @store1.employees.create(first_name: "Doctor Stephen", last_name: "Strange", hourly_rate: 200)
# @store2.employees.create(first_name: "Natasha", last_name: "Romanoff", hourly_rate: 60)
# @store2.employees.create(first_name: "Bruce", last_name: "Banner", hourly_rate: 45)
# @store4.employees.create(first_name: "Bart", last_name: "Simpson", hourly_rate: 40)
# @store4.employees.create(first_name: "Lisa", last_name: "Simpson", hourly_rate: 120)
# @store5.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 160)
# @store5.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 120)
# @store5.employees.create(first_name: "Ken", last_name: "Doll", hourly_rate: 80)
# @store6.employees.create(first_name: "Adam", last_name: "Smith", hourly_rate: 70)
# @store6.employees.create(first_name: "June", last_name: "Doe", hourly_rate: 65)

puts @store3.employees.create(first_name: "Steve", last_name: "Rogers", hourly_rate: 200).errors.messages

# puts @store3.errors.messages

# # Store.employees.all
# @stores = Store.includes(:employees)

# # puts @stores.first.employees.inspect

# @stores.each do |s|
#   print "Store #{s.name} has employees: "
#     s.employees.each do |e|
#       print "#{e.last_name} ,"
#     end
#   puts
# end