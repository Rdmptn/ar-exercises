require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "A", last_name: "A", hourly_rate: 50)
@store1.employees.create(first_name: "B", last_name: "B", hourly_rate: 40)
@store1.employees.create(first_name: "C", last_name: "C", hourly_rate: 30)
@store2.employees.create(first_name: "D", last_name: "D", hourly_rate: 60)
@store2.employees.create(first_name: "E", last_name: "E", hourly_rate: 50)
@store2.employees.create(first_name: "F", last_name: "F", hourly_rate: 40)
@store2.employees.create(first_name: "G", last_name: "G", hourly_rate: 30)
@store2.employees.create(first_name: "H", last_name: "H", hourly_rate: 20)
@store2.employees.create(first_name: "I", last_name: "I", hourly_rate: 10)

@store_1_employees = Employee.where(store_id: 1)
@store_2_employees = Employee.where(store_id: 2)

puts "Store 1 Employees ---------------------"
@store_1_employees.each do |employee|
  puts "Name: #{employee.first_name} #{employee.last_name}"
end

puts "Store 2 Employees ---------------------"
@store_2_employees.each do |employee|
  puts "Name: #{employee.first_name} #{employee.last_name}"
end
