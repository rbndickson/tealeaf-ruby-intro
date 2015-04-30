puts "----- Q1 -----"

# 1. What would you expect the code below to print out?

#    I'd expect it to print 1, 2, 2, 3 because without the ! the
#    array will not be altered.

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

puts "----- Q2 -----"
puts "In comments."
# 2. Describe the difference between ! and ? in Ruby.
#    ! alters the actual array, ? gives a boolean.
#    And explain what would happen in the following scenarios:

# 1. what is != and where should you use it?
#    not equal to

# 2. put ! before something, like !user_name
#    not the variable

# 3. put ! after something, like words.uniq!
#    changes the object it is called upon

# 4. put ? before something
#    ternary operator for if else.
#    **Like shorthand for if else? CHECK THIS.

# 5. put ? after something
#    indicates that a boolean is returned

# 6. put !! before something, like !!user_name
#    converts the value to a boolean. It's like not not

puts "----- Q3 -----"
# 3. Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice

advice.sub!('important', 'urgent')
puts advice

# solution used gsub which is the same except it replaces all
# occurances of 'important', whereas sub only replaces the first.


puts "----- Q4 -----"
# 4.
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What would the following return?

numbers.delete_at(1)
p numbers
# This would delete the no at position 1 ie. 2

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers
# This will delete the 1

puts "----- Q5 -----"
# 5. Programmatically determine if 42 lies between 10 and 100.

if (10..100).include?(42)
  puts "42 is between 10 and 100"
else
  puts "42 is not between 10 and 100"
end

# Solution used .cover? - not sure exactly why.

puts "----- Q6 -----"
# 6. Starting with the string:

famous_words = "and seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.
# Don't really understand the question.... searched - this is a quote from
# American declaration of independence.

famous_words = "and seven years ago..."
famous_words = "Four score " + famous_words
puts famous_words


famous_words = "and seven years ago..."
famous_words.prepend("Four score ")
puts famous_words

puts "----- Q7 -----"
# 7. What will the result be?
# 42

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

puts "----- Q8 -----"
# 8.
# If we build an array like this:
#
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:
#
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

arr = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
arr.flatten!
p arr

puts "----- Q9 -----"

# 9. Given the hash below
#    Programmatically get an array with Barney's name and number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }

Barney_array = [flintstones.flatten[4], flintstones.flatten[5]]
p Barney_array

# Solution was
p flintstones.assoc("Barney")

puts "----- Q10 -----"
# 10. Given the array below
# Turn this array into a hash
# where the names are the keys and the values are the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

new_flint = {}
flintstones.each_with_index do |item, index|
  new_flint[item] = index
end
p new_flint
