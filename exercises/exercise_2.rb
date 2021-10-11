require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store2 = Store.find(2)
@store1.update(name: "Vancouver")

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Johnny", last_name: "Labedzki", hourly_rate: 50)
@store1.employees.create(first_name: "Joe", last_name: "Blow", hourly_rate: 40)

@store2.employees.create(first_name: "Schmoe", last_name: "Ho", hourly_rate: 70)
@store2.employees.create(first_name: "Jane", last_name: "Schmane", hourly_rate: 30)
@store2.employees.create(first_name: "Yuck", last_name: "McGuck", hourly_rate: 20)

