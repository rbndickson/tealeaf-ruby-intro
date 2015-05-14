puts "----- Q1 -----"
# 1. Figure out the total age of just the male members of the family.

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}
male_m_age_total = 0
#male_m_age_total + info["age"] if munsters.each do { |munster, info| info["gender"] == "male" }

munsters.each do |munster, info|
  if info["gender"] == "male"
    male_m_age_total += info["age"]
  end
end

puts male_m_age_total

# solution

total_male_age = 0
munsters.each do |key, value|
  male_family_member = value["gender"] == "male"
  total_male_age += male_family_member ? value["age"] : 0
end
puts total_male_age

puts "----- Q2 -----"
# 2. Augment the following hash such that it has additional key value
#    pairs that can act as a "sort index" which will allow us to quickly
#    re-arrange a list of our family members as either sorted by name-length
#    or sorted by their original order as shown here:

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" }
}

counter = 0
munsters.each do |name, info|
  info["orig_index"] = counter
  info["name_length"] = name.length
  counter += 1
end

puts munsters
# solution

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" }
}

index = 0
munsters = munsters.each{ |key, value| value[:original_order] = index; index += 1 }
munsters = munsters.each{ |key, value| value[:length_order] = key.length }
puts munsters

puts "----- Q3 -----"
# 3. One of the most frequently used real-world string properties is
#    that of "string substitution", where we take a hard-coded string
#    and modify it with various parameters from our program.

#    Given this previously seen family hash, print out the name, age and
#    gender of each family member:

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}
#    ...like this:
#    (Name) is a (age) year old (male or female).

munsters.each do |name, info|
  puts "#{name} is a #{info["age"]} year old #{info["gender"]}."
end

# solution uses each_pair, not sure why

munsters.each_pair do |key, value|
  puts "#{key} is a #{value['age']} year old #{value['gender']}"
end

puts "----- Q4 -----"
# 4. In an earlier exercise we saw that depending on variables to be modified
#    by called methods can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#    We learned that when the above "coincidentally" does what we think
#    we wanted "depends" upon what is going on inside the method.
#    How can we refactor this exercise to make the result easier to predict
#    and easier for the next programmer to maintain?

#    Do not really understand this question. Answer is below
my_string = "pumpkins"
my_array = ["pumpkins"]

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param += ["rutabega"]

  return a_string_param, an_array_param
end

a_string_param, an_array_param = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#    So in the non tricky one the original array is unchanged

puts "----- Q5 -----"

# 5. Use the String#split and String#join methods technique to break up
#    the following string and put it back together with the words in
#    reverse order:

sentence = "Humpty Dumpty sat on a wall."

p sentence[0..-2].split.reverse!.join(" ") + "."

sentence = "Humpty Dumpty sat on a wall."
words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ') + '.'
p backwards_sentence

puts "----- Q6 -----"

# 6. What is the output of the following code?
#    34
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

puts "----- Q7 -----"
# 7. One day Spot was playing with the Munster familiy's home computer
#    and he wrote a small program to mess with their demographic data:

munsters = {
     "Herman" => { "age" => 32, "gender" => "male" },
     "Lily" => { "age" => 30, "gender" => "female" },
     "Grandpa" => { "age" => 402, "gender" => "male" },
     "Eddie" => { "age" => 10, "gender" => "male" },
     "Marilyn" => { "age" => 23, "gender" => "female"}
    }

def mess_with_demographics(demo_hash)
    demo_hash.values.each do |family_member|
      family_member["age"] += 42
      family_member["gender"] = "other"
    end
end

#    After writing this method, he typed the following...and before Grandpa
#    could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)
p munsters
#    Did the family's data get ransacked, or did the mischeif only mangle a
#    local copy of the original hash? (why?)

#    Yes it all changed. The program worked on the actual munsters hash



puts "----- Q8 -----"
# 8. In a previous exercise we created a monkey patch for the
#    Ruby String class which could be used to get a shortened version
#    of the string.

#    Write a new patch called pretty_short_version which will return a
#    string that ends on a word boundary and is never longer than the
#    length parameter.

#    If the first word is too long, the solution should fall back to just
#    shortening the first word.
#    Don't forget to leave room for and append the ellipsis at the end.

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

def pretty_short_version(original_string, len_limit)
  if original_string.length > len_limit
    cut_here = original_string.rindex(" ", len_limit)
    new_string = original_string[0..cut_here - 1] << '…'
    new_string
  else
    original_string
  end
end

characters.each do |char|
  #puts "#{ellipse_it(:character, 25)}    #{ellipse_it(:description, 25)}"
  puts "#{pretty_short_version(char[:character], 32)}     "\
  "#{pretty_short_version(char[:real_name], 32)}    "\
  "#{pretty_short_version(char[:description], 32)}"

end

puts "----- Q9 -----"
# 9. Method calls can take expressions as arguments.
#    Suppose we define a function called rps as follows,
#    which follows the classic rules of rock-paper-scissors game,
#    but with a slight twist that it declares whatever hand was used in the
#    tie as the result of that tie.

# NOTE: This is the ternary operator

def rps(fist1, fist2)
  if fist1 == "rock"
    # if fist2 is paper then paper wins else rock
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    # if fist2 is scissors then scissors wins else paper
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    # fist1 must be scissors
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

#    What is the result of the following call?
#    Answer is paper
#                                               paper
#                                paper            vs            rock
#                     paper       vs            rock
puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")


puts "----- Q10 -----"
# 10 What would be the output of this code:
#    If the param is no for bar whatever then it will output yes - incorrect
#    I guess the param from foo took over the param within the def.

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)
