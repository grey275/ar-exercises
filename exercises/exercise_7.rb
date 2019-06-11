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
def get_store
  print "input a store name"
  gets.chomp
end

name = get_store
new_store = Store.create(name: name)

puts new_store.errors.to_a do |error|
  puts error.to_s
end