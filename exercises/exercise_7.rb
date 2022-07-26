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
@store2.employees.create(first_name: "Colleen", last_name: "Garvey", hourly_rate: 100)
employee = Employee.create(first_name: "Tom", last_name: "Smith", hourly_rate: 55)

store = Store.create(name: "Store One", annual_revenue: 550000, womens_apparel: true)
store = Store.create(name: "Store Two", mens_apparel: true, womens_apparel: true)
store = Store.create(name: "Store Three", annual_revenue: 0, mens_apparel: true, womens_apparel: true)
puts "Store name:"
store_name = gets.chomp
puts "Creating store #{store_name}..."

invalid_store = Store.create(name: store_name)

valid_store_check = invalid_store.valid?
puts "Is store valid?: #{valid_store_check}"

puts invalid_store.errors.full_messages