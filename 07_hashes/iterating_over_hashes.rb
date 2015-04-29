# iterating_over_hashes.rb

cat = {name: 'Skye', size: 'small',
      breed: 'moggy', fur: 'grey and white'}

cat.each do |key, value|
  puts "Skye's #{key} is #{value}."
end
