require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
@count = Store.count

puts "total revenue: " + @total_revenue.to_s
puts "average revenue: " + (@total_revenue / @count).to_s

@failing_count = Store
  .where(annual_revenue: 0...1000000)
  .count

puts "failing_count: " + @failing_count.to_s