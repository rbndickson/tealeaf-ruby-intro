puts "----- Q1 -----"
# 1. Print all values.

arr = [1, 2, 3, 4, 5, 6 ,7 , 8, 9, 10]

arr.each do |value|
  puts value
end


puts "----- Q2 -----"
# 2. Print all greater than 5.

arr.each do |value|
  if value > 5
    puts value
  end
end

puts "----- Q3 -----"
# 3. Extract all odd numbers into a new array.

new_arr = arr.select { |value| value.odd?}
p new_arr

puts "----- Q4 -----"
# 4. Append "11" to the end of the original array.
#    Prepend "0" to the beginning.

arr << 11
p arr
arr.unshift(0)
p arr

puts "----- Q5 -----"
# 5. Get rid of 11 and append a 3

arr.pop
p arr
arr << 3 # or arr.push(11)
p arr

puts "----- Q6 -----"
# 6. Get rid of duplicates (without specifying 1 val)

arr.uniq!
p arr

puts "----- Q8 -----"
# 8. Create a hash using both styles.

cat = {name: 'Selina'}
p cat

dog = {:name => 'Bill'}
p dog

puts "----- Q9 -----"
# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}
b_val = h[:b]
puts b_val
h[:e] = 5

p h

h.each do |key, value|
  if value < 3.5
    h.delete(key)
  end
end

p h

puts "----- Q10 -----"
# 10.

# Yes
arrays_in_hash_values = {even_numbers_under_10: [2, 4, 6, 8],
                         odd_numbers_under_10: [1, 3, 5, 7, 9]}
p arrays_in_hash_values

array_of_hashes = [{name: 'Jim', age: 64}, {name: 'Frank', age: 56}]
p array_of_hashes

puts "----- Q12 -----"
# 12. Given the following data structures. Write a program that
#     moves the information from the array into the empty
#     hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phoneno] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phoneno] = contact_data[1][2]

p contacts

puts "----- Q13 -----"
# 13. Using the hash you created from the previous exercise,
#     demonstrate how you would access Joe's email and
#     Sally's phone number?

puts contacts['Joe Smith'][:email]
puts contacts['Sally Johnson'][:phoneno]

puts "----- Q14 -----"
# 14. In exercise 12, we manually set the contacts hash values
#     one by one. Now, programmatically loop or iterate over the
#     contacts hash from exercise 12, and populate the associated
#     data from the contact_data array.

#     First with just one person

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

fields = [:email, :address, :phoneno]

contacts.each do |key, value|
  fields.each do |field|
    contacts[key][field] = contact_data.first
    contact_data.shift
  end
end

puts contacts

puts "----- Q14 Bonus -----"

#     Now edit for more than 1 person

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}



fields = [:email, :address, :phoneno]

contacts.each do |key, value|
  fields.each do |field|
    contacts[key][field] = contact_data[0][0]
    contact_data.first.shift
  end
  contact_data.shift
end

puts contacts

#     Should have used .each_with_index, this is how you get a
#     nice counter!!!!!

puts "----- Q15 -----"
# 15. Use Ruby's Array method delete_if and String method
#     start_with? to delete all of the words that begin with
#     an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

#     Then recreate the arr and get rid of the words that start
#     with "s" or "w".

arr.delete_if { |word| word.start_with?('s') }
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?('s','w') }
p arr

# NOTE: Does not work with a space between the ? and the brackets.

puts "----- Q16 -----"
# 16. Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, as well as String's
# split method.

b = a.map {|phrase| phrase.split}
b.flatten!
p b

puts "----- Q17 -----"
# 17. What will the following program output?

# Answer: Same

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
