require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Schema was defined as Store per store.rb
# create_table :stores do |t|
#   t.column :name, :string
#   t.column :annual_revenue, :integer
#   t.column :mens_apparel, :boolean
#   t.column :womens_apparel, :boolean
#   t.timestamps null: false
# end

# Your code goes below here ...

# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
@store1 = Store.create(
  name: "Burnaby",
  annual_revenue: 300_000,
  mens_apparel: true,
  womens_apparel: true
)

# Richmond (annual_revenue of 1260000 carries women's apparel only)
@store2 = Store.create(
  name: "Richmond",
  annual_revenue: 1_260_000,
  mens_apparel: false,
  womens_apparel: true
)

# Gastown (annual_revenue of 190000 carries men's apparel only)
@store3 = Store.create(
  name: "Gastown",
  annual_revenue: 190_000,
  mens_apparel: true,
  womens_apparel: false
)

puts "There is #{Store.count} stores in Vancouver"
