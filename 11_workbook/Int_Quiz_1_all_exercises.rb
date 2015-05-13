puts "----- Q1 -----"
# Keep adding a space to the beginning of a string

tfr = "The Flintstones Rock!"

10.times do
  puts tfr
  tfr.prepend(" ")
end

# Solution is more complex:
10.times{ |index| puts "The Flintstones Rock!".rjust(21 + index) }

puts "----- Q2 -----"
# 2. Create a hash that expresses the frequency with which each letter occurs in this string:
#    ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }


statement = "The Flintstones Rock"
arr = statement.split(//)
arr.delete(" ")
count_hash = {}
arr.each do |letter|
  count_hash[letter] = arr.count(letter)
end
p count_hash

# Solution
result = {}
letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
letters.each do |letter|
  count = statement.scan(letter.to_s).count
  result[letter] = count if count > 0
end
p result

puts "----- Q3 -----"
# 3. The result of the following statement will be an error:
#    Why is this and what are two possible ways to fix this?

# puts "the value of 40 + 2 is " + (40 + 2)

# Becasue it is mixing a string and an integer

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"
# This is string interpolation
# Interpolation allows Ruby code to appear within a string.
# The result of evaluating that code is inserted into the string.

puts "----- Q4 -----"
# 4. What happens when we modify an array while we are iterating over it?
#    What would be output by this code?

# The array stays modified.
# Will print 1, 3, 4 - incorrect

# Answer is 1, 3. Because the loop counter is compared against
# the current length rather than the original length.


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#   What would be the output of this code?
#   Will print 1, 2 - correct

puts '-- part 2 --'

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

puts "----- Q5 -----"
# Alan wrote the following method, which was intended to show all of the
# factors of the input number:

def factors(number)
  dividend = number
  divisors = [] # make an empty array called divisors
  begin
    # if the number / dividend is a whole number add it to the array
    divisors << number / dividend if number % dividend == 0
    # minus 1 from the dividend
    dividend -= 1
    # end when dividend is 0
  end until dividend == 0
  divisors
end

p factors(9)

#p factors(-9)

# Alyssa noticed that this will fail if you call this with an input of 0
# or a negative number and asked Alan to change the loop. How can you change
# the loop construct (instead of using begin/end/until) to make this work?
puts "---- new version ----"
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(-9)

# This was the solution

puts "----- Q6 -----"
# 6. Alyssa was asked to write an implementation of a rolling buffer.
#    Elements are added to the rolling buffer and if the buffer becomes full,
#    then new elements that are added will displace the oldest elements
#    in the buffer.

#    She wrote two implementations saying, "Take your pick.
#    Do you like << or + for modifying the buffer?".
#    Is there a difference between the two, other than what operator
#    she chose to use to add an element to the buffer?


#    Answer: << adds to the original array whereas + joins the 2 together in
#            a new array.

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

puts "----- Q7 -----"
# 7. Alyssa asked Ben to write up a basic implementation of a Fibonacci
#    calculator, A user passes in two numbers, and the calculator will keep
#    computing the sequence until some limit is reached.

#    Ben coded up this implementation but complained that as soon as he ran it,
#    he got an error. Something about the limit variable.
#    What's wrong with the code?
#    The limit variable is outside the function

#    How would you fix this so that it works?

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Or the solution - You can make limit an additional argument to the
# definition of the fib method and pass it in when you call fib.

puts "----- Q8 -----"
# 8. In another example we used some built-in string methods to change the
#    case of a string. A notably missing method is something provided in Rails,
#    but not in Ruby itself...titleize! This method in Ruby on Rails creates a
#    string that has each word capitalized as it would be in a title.
#
#    Write your own version of the rails titleize!

def titlelize(input)
  input.downcase!
  arr = input.split
  arr.each { |word| word.capitalize!}
  output = arr.join(" ")
end
puts titlelize("an example TITLE")

# Solution words.split.map { |word| word.downcase.capitalize }.join(' ')

puts "----- Q9 -----"
# 9. One of the more frequent issues we run into when designing an application
#    is a shortage of screen real-estate. We often find it necessary to show an
#    abbreviated form of a long text field. Following tradition, this is
#    typically done by chopping off the end of the string and punctuating it
#     with an "ellipsis" (also known as a "three dot", "…" ).
#
#    Add a method to the Ruby String class that will take an input parameter
#    and apply this form of shortening and return a shortened string with an
#    ellipsis (but only when the string is too long to start with.)
#
#    Once you have that done, use it to print out a table of this list of
#    characters with no field larger than 32 characters in width.

characters = [
    { :character => "Batman", :real_name => "Bruce Wayne",
      :description => "Comic book superhero who fights crime while wearing " \
      "a costume loosely based on a bat" },
    { :character => "Robin", :real_name => "Dick Grayson",
      :description => "Loyal sidekick for batman -- much younger and " \
      "smaller and sometimes portrayed by girl in later episodes" },
    { :character => "Commisioner Gordon", :real_name => "James Gordon",
      :description => "Police Commisioner of Gotham City and loyal friend of " \
      "Batman -- frequently communicates secretly with Batman via signals or " \
      "a special red BatPhone" },
    { :character => "Alfred", :real_name => "Alfred",
      :description => "The butler and also a key support player in many " \
      "episodes providing communications, armament, and also moral support to" \
      "Batman" }
    ]

def ellipse_it(original_string, len_limit)
  if original_string.length > len_limit
    new_string = original_string[0..len_limit-1] << '…'
    new_string
  else
    original_string
  end
end

characters.each do |char|
  #puts "#{ellipse_it(:character, 25)}    #{ellipse_it(:description, 25)}"
  puts "#{ellipse_it(char[:character], 32)}     "\
  "#{ellipse_it(char[:real_name], 32)}    "\
  "#{ellipse_it(char[:description], 32)}"

end

puts "-- solution --"


class String
  def short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
      result = result[0, length - 1]
      result += "…"
    end

    result
  end
end

characters.each{ |character| p character.values.map{ |value| value.short_version(32) }.join("    ") }

puts "----- Q10 -----"
# 10. Augment the following hash such that it has additional key value
#     pairs giving us a "demographic" key that has one of three values
#     describing the age group the family member is in (kid, adult, senior):

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters.each do |munster, info|
  if info["age"] >= 60
    info["demographic"] = "senior"
  elsif info["age"] >= 18
    info["demographic"] = "adult"
  else info["age"] < 18
    info["demographic"] = "kid"
  end
end
p munsters

puts "-- solution --"

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_of_majority = 18
dotage = 65
munsters.each do |key, value|
  value[:demographics] = "kid" if value["age"] < age_of_majority
  value[:demographics] = "adult" if (age_of_majority..dotage).include?(value["age"])
  value[:demographics] = "senior" if value["age"] >= dotage
end

p munsters
