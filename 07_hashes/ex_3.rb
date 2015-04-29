#Using some of Ruby's built-in Hash methods, write a program that loops
#through a hash and prints all of the keys.
#Then write a program that does the same thing except printing the values.
#Finally, write a program that prints both.

cat = {name: 'Skye', size: 'small',
      breed: 'moggy', color: 'grey and white'}

def print_keys (arr)
  puts arr.keys
end

# Solution: cat.each_key { |key| puts key }
# Result prints the same

def print_values (arr)
  puts arr.values
end

# Solution: cat.each_value { |value| puts value }
# Result prints the same

def print_all (arr)
  arr.each do |key, value|
    puts "#{key} is #{value}."
  end
end

# opposites.each { |key, value| puts "#{key} is #{value}" }
# Almost the same.

print_keys (cat)
puts ''
print_values (cat)
puts ''
print_all (cat)
