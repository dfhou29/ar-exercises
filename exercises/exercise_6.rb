require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name: "Dow", hourly_rate: 45)
@store1.employees.create(first_name: "GG", last_name: "Bond", hourly_rate: 35)

@store2.employees.create(first_name: "GP", last_name: "Racer", hourly_rate: 40)
@store2.employees.create(first_name: "Tom", last_name: "Cat", hourly_rate: 30)
@store2.employees.create(first_name: "Jerry", last_name: "Mouse", hourly_rate: 50)