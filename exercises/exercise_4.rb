require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
@store4 = Store.create(
  name: "Surrey",
  annual_revenue: 224_000,
  mens_apparel: false,
  womens_apparel: true
)

# Whistler (annual_revenue of 1900000 carries men's apparel only)
@store5 = Store.create(
  name: "Whistler",
  annual_revenue: 1_900_000,
  mens_apparel: true,
  womens_apparel: false
)

# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
@store6 = Store.create(
  name: "Yaletown",
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true
)

@men_stores = Store.where(mens_apparel: true)
                   .order(name: :asc)

@men_stores.each do |s|
  puts "#{s.name} has annual revenue of #{s.annual_revenue}"
end

@women_small_stores = Store.where("annual_revenue < ?", 1_000_000)
                   .where(womens_apparel: true)
                   .order(name: :asc)

@women_small_stores.each do |s|
  puts "#{s.name} seels #{s.womens_apparel ? "women's appareal" : "na"} has annual revenue of #{s.annual_revenue}"
end