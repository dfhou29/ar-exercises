require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts Store.count

# find stores that carry men's apparel
@men_stores = Store.where(mens_apparel: true)

puts 'men apparel'

@men_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end

# find stores that carry women's apparel
@women_stores = Store.where(womens_apparel: true)

puts 'women apparel'

@women_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end