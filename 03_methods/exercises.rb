# 1. Write a program that contains a method called greeting that takes
#    a name as its parameter.
#    It then prints a greeting message with the name included in it.

def greeting (name)
  puts 'Good day ' + name
end

greeting('Robin')

# 2. What do the following expressions evaluate to?

# 1. x = 2
# evaluates to 2
#
# 2. puts x = 2
# evaluates to nil
#
# 3. p name = "Joe"
#evaluates to "Joe"
#
# 4. four = "four"
# evaluates to "four"
#
# 5. print something = "nothing"
# evaluates to nil

# 3. Write a program that includes a method called multiply that takes two
#    arguments and returns the product of the two numbers.

def multiply (number1, number2)
  number1 * number2
end

puts multiply(8,4)

# 4. What will the following print on the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# It will print nothing - because the return is before the puts

# 5. Edit the method in exercise #4 so that it does print words on the screen.
#    What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# It returns nil - because puts returns nil.

# 6. What does the following message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# You only gave 1 arg to the method when 2 were expected.
