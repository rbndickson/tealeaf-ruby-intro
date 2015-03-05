# name.rb

puts "Enter first name:"
first_name = gets.chomp
puts "and last name:"
last_name = gets.chomp
10.times do
  puts "Hey " + first_name + " " + last_name + ", how's it going?"
end
