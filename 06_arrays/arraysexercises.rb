puts '---------------------------- Question 1 ----------------------------'
# Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]

number = 3
if arr.include?(number) == true
  puts "#{number} is in the array."
else
  puts "#{number} is not in the array."
end

number = 4
if arr.include?(number) == true
  puts "#{number} is in the array."
else
  puts "#{number} is not in the array."
end

puts '---------------------------- Question 2 ----------------------------'
# What will the following programs return?  What is the value of arr after each?
# The programs return what they delete.
puts '** Part 1 **'

arr = ["b", "a"]
arr = arr.product(Array(1..3))
#makes combinations [["b", 1],["b", 2] etc]

arr.first.delete(arr.first.last)  #arr.first is ["b", 1] so first.last is 1
# so it will delete the 1, and return 1 - correct.
# array will be [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] -
# correct
p arr

puts '** Part 2 **'

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
#makes [['b', [1, 2, 3]]['a', [1, 2, 3]]]

arr.first.delete(arr.first.last) # first.last will be [1,2,3]
# so will delete [1, 2, 3] in the first array and return [1, 2, 3] - correct.
p arr

puts '---------------------------- Question 3 ----------------------------'
# Print the word example from the array

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]

# or as in the solution arr.last.first

puts '---------------------------- Question 4 ----------------------------'
# What does each method return in the following example.

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts '** Part 1 **'
p arr.index(5)
# will print 8 - nooo prints 3!

puts '** Part 2 **'
#p arr.index[5]
# will throw an error

puts '** Part 3 **'
p arr[5]
# will print 8

puts '---------------------------- Question 5 ----------------------------'
# What is the value of a, b, and c in the following program?

string = "Welcome to Tealeaf Academy!"
a = string[6]  # e
b = string[11] # T
c = string[19] # A
puts "a is #{a}, b is #{b}, c is #{c}"

puts '---------------------------- Question 6 ----------------------------'
# What is wrong with this code:
#names = ['bob', 'joe', 'susan', 'margaret']
#names['margaret'] = 'jody'

# You dont select 'margaret' in this way, should be done using an integer:

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
p names

puts '---------------------------- Question 7 ----------------------------'
# Write a program that iterates over an array and builds a new array that is
# the result of incrementing each value in the original array by a value of 2.

arr = [1, 2, 3, 10, 22, 100]
# make a new array with each number plus 2
new_arr = Array.new
arr.each { |no| new_arr << no + 2 }
p arr
p new_arr
