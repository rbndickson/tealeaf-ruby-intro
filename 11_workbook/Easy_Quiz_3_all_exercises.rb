puts "----- Q1 -----"
# 1. Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts "----- Q2 -----"
# 2. How can we add "Dino" to our usual array:

flintstones << "Dino"
p flintstones

puts "----- Q3 -----"
# 3. Add "Dino" and "Hoppy" to the array

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")
p flintstones

# This works but solution is
# flintstones.push("Dino").push("Hoppy")

puts "----- Q4 -----"
# 4. Shorten this sentence, remove everything starting from house:

advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice[0..38]
puts advice

# solution: advice.slice!(0, advice.index('house'))

puts "----- Q5 -----"
# 5. Write a one liner to count the number of lower case 't' characters in the
# following string:

statement = "The Flintstones Rock!"
puts statement.count('t')

# Solution: statement.scan('t').count

puts "----- Q6 -----"
# 6. Back in the stone age (before CSS) we used spaces to align things on the
#    screen. If we had a 40 character wide table of Flintstone family members,
#    how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
spaces_before = ((40 - title.length) / 2)
spaces_before.times { title.prepend(" ") }
puts title

# Solution

title = "Flintstone Family Members"
puts title.center(40)
