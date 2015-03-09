# 5. Write a program that takes a number from the user between 0 and 100 and
#    reports back whether the number is between 0 and 50,
#    50 and 100, or above 100. Use case statements. Wrap each statement in a
#    method.

puts "case 1"

def case_numbers1(number)
  # The most basic way, very similar to using if.
  case
  when number < 0
    puts "Number is too low."
  when number < 51
    puts "Number is between 0 and 50."
  when number < 101
    puts "Number is between 51 and 100."
  else
    puts "Number is over 100."
  end
end
case_numbers1(-4)
case_numbers1(34)
case_numbers1(77)
case_numbers1(101)

puts "case 2"


def case_numbers2(number)
  answer = case
  when number < 0
    "Number is too low."
  when number < 51
    "Number is between 0 and 50."
  when number < 101
    "Number is between 51 and 100."
  else
    "Number is over 100."
  end
  puts answer
end
case_numbers2(-4)
case_numbers2(34)
case_numbers2(77)
case_numbers2(101)

puts "case 3"


def case_numbers3(number)
  case number

  when 0..50
    puts "Number is between 0 and 50."
  when 51..100
    puts "Number is between 51 and 100."
  else
    if number < 0
      puts "Number is too low"
    else
      puts "Number is over 100"
    end
  end
end
case_numbers3(-4)
case_numbers3(34)
case_numbers3(77)
case_numbers3(101)
