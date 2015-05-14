puts "----- Q1 -----"

# 1. What do you expect to happen when the greeting variable is referenced
#    in the last line of the code below?

#    Greeting is not set so I would expect an exception - incorrect
#    Even though greeting is not set to the string the var is initialized
#    and set to nil, so no exception is thrown.

if false
  greeting = “hello world”
end

greeting

puts "----- Q2 -----"
# 2. What is the result of the last line in the code below?
#    'hi' - incorrect! The hash was edited also! Should have known from the
#     question really...!

#     This is particular to using << which modifies the caller
#     if + was used to concatenate it would not happen

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# Concatenate

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting += ' there'

puts informal_greeting  #  => "hi there"
puts greetings

puts "----- Q3 -----"
# 3. In other exercises we have looked at how the scope of variables
#    affects the modification of one "layer" when they are passed to another.
#    To drive home the salient aspects of variable scope and modification of
#    one scope by another, consider the following similar sets of code.

#    What will be printed by each of these code groups?
puts "----- A -----"
# I think these will be unchanged as only the variables within the method
# are changed - correct
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"  # "one"
puts "two is: #{two}"  # "two"
puts "three is: #{three}" # "three"

puts "----- B -----"
# I still don't think they change - correct
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"


puts "----- C -----"
# gsub mutates the caller so this time one is "two" etc
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

puts "----- Q4 -----"
# Write a method that returns one UUID when called with no parameters.
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# Each UUID consists of 32 hexadecimal characters, and is typically broken
# into 5 sections like this 8-4-4-4-12 and represented as a string

def get_uuid
  uuid = ''
  num_a = ('0'..'9').to_a
  letter_a = ('a'..'z').to_a
  chars = letter_a + num_a

  8.times {uuid += chars.sample}
  uuid += '-'
  3.times do
    4.times {uuid += chars.sample}
    uuid += '-'
  end
  12.times {uuid += chars.sample}

  uuid
end

puts get_uuid


puts "----- Q5 -----"


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words != 4
    return false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_a_number?(word)
    end
    return true
  end
end
