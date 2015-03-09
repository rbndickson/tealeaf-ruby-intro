# 1. Write whether the following return true or false.

# 1. (32 * 4) >= 129
# 2. false != !true
# 3. true == 4
# 4. false == (847 == '874')
# 5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

# Answers:

# 1. false
# 2. false
# 3. false
# 4. true
# 5. (!true || (!20 == 20) || (82 == 82)) || false
#    (false || false || true) || false
#    true || false
#    true

p (32 * 4) >= 129
p false != !true
p true == 4
p false == (847 == '874')
p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

# 2. Write a method that takes a string as argument.
#    The method should return the all-caps version of the string,
#    only if the string is longer than 10 characters.

def caps(string_input)
  if string_input.length > 10
    puts string_input.upcase
  elsif
    puts string_input
  end
end

caps("< than 10")
caps("more than ten")

# 3. Write a program that takes a number from the user between 0 and 100 and
#    reports back whether the number is between 0 and 50,
#    50 and 100, or above 100.

def numbers(number)
  #puts "Enter number:"
  #number = gets.chomp.to_i
  if number < 0
    puts "Number must be 0 or above"
  elsif number < 51
    puts "Number is between 0 and 50"
  elsif number < 101
    puts "Number is between 51 and 100"
  else
    puts "Number is over 100"
  end
end
numbers(-4)
numbers(25)
numbers(75)
numbers(175)

# 4. What will these blocks of code print out?

# 1.
'4' == 4 ? puts("TRUE") : puts("FALSE")
# Answer is "FALSE"

# 2.
x = 2
 if ((x * 3) / 2) == (4 + 4 - x - 3)
   #  3 == 3 This is the answer
   puts "Did you get it right?"
 else
   puts "Did you?"
 end

# 3.
y = 9
 x = 10
 if (x + 1) <= (y)  #  11 <= 9
   puts "Alright."
 elsif (x + 1) >= (y)  # 11 >= 9  This is the anwswer
   puts "Alright now!"
 elsif (y + 1) == x
   puts "ALRIGHT NOW!"
 else
   puts "Alrighty!"
 end


# 5. Answer in seperate file.

# 6. When you run the following code you get an error message:
#    test_code.rb:96: syntax error, unexpected end-of-input,
#    expecting keyword_end

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end
#
# equal_to_four(5)

# This is because the if statement needs to be closed with 'end'

# Corrected:

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
