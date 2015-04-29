#What method could you use to find out if a Hash contains a specific value
#in it? Write a program to demonstrate this use.

cat = {name: 'Skye', size: 'small',
      breed: 'moggy', color: 'grey and white'}

puts "'moggy' is a value in cat? #{cat.has_value?('moggy')}."
puts "'tabby' is a value in cat? #{cat.has_value?('tabby')}."


def value_exists(test_value)
  if cat.has_value?(test_value) == true
    puts "#{test_value} is in the hash"
  elsif
    puts "#{test_value} is not in the hash"
  end
end

value_exists('moggy')
value_exists('tabby')
