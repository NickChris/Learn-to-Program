# Exercises

puts "Please enter your first name:"
firstName 	= gets.chomp
puts "Please enter your middle name:"
midName 	= gets.chomp
puts "Please enter your last name:"
lastName 	= gets.chomp

puts "Nice to meet you " + firstName + " " + midName + " " + lastName
puts ""
puts ""

puts "What is your favorite number?"
favNum = gets.chomp .to_i
biggerNum = favNum + 1
puts "Have you considered changing your favorite number to " + biggerNum.to_s + "?"
puts biggerNum.to_s + " is a bigger and better number."