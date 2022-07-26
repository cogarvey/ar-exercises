require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum('annual_revenue')

average_revenue = total_revenue / Store.count

million_revenue_stores = Store.where('annual_revenue >= 1000000')

puts "There are #{million_revenue_stores.count} stores that make 1+ million revenue annually"
