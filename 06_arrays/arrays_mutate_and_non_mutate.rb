# arrays_mutate_and_non_mutate.rb

def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
#mutate(a)
#not_mutate(a)
puts 'Before: '
p a
puts a

puts 'After non mutate: '
not_mutate(a)
p a
puts a

puts 'After mutate: '
mutate(a)
p a
puts a
