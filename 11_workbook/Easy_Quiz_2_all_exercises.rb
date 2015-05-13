puts "----- Q1 -----"
# 1. In this hash of people and their age,
#    see if there is an age present for "Spot".

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages["Spot"]
p ages.key?("Spot")
p ages.has_key?("Spot")

puts "----- Q2 -----"
# 2. Add up all of the ages from our current Munster family hash:

ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10,
         "Marilyn"=>22, "Spot"=>237 }
total_age = 0
ages.each do |name, age|
  total_age = total_age + age
end

puts total_age

# The given solution
puts ages.values.inject(:+)

puts "----- Q3 -----"
# 3. In the age hash:
#    throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.each do |name, age|
  if age > 99
    ages.delete(name)
  end
end

puts ages

# Solution

ages.keep_if { |key, value| value < 100 }
puts ages

puts "----- Q4 -----"
# 4. Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on
# original munsters_description above):

puts "The munsters are creepy in a good way."
puts munsters_description.capitalize

puts "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.swapcase

puts "the munsters are creepy in a good way."
puts munsters_description.downcase

puts "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.upcase

puts "----- Q5 -----"
# 5. We have most of the Munster family in our age hash,
#    add ages for Marilyn and Spot to the existing hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages

puts "----- Q6 -----"
# 6. Pick out the minimum age from our current Munster family hash:

ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }

puts ages.values.min
# Although can't find min in the docs

puts "----- Q7 -----"
# 7. See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match("Dino")

puts "----- Q8 -----"
# 8. In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Find the index of the first name that starts with "Be"
#NOTE I guess the %w creates an array of strings

flintstones.each_with_index do |name, index|
  if name[0..1] == "Be"
    puts index
  end
end

#or the solution -- flintstones.index { |name| name[0, 2] == "Be" }

puts "----- Q9 -----"
# 9. Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones
flintstones.map! do |name|
  name[0..2] # or name[2, 3]
end

p flintstones

puts "----- Q10 -----"
# 10. Again, shorten each of these names to just 3 characters -
#     but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones
flintstones.map! { |name| name[0..2] }

p flintstones
