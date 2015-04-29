#Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Write a program that prints out groups of words that are anagrams.
#Anagrams are words that have the same exact letters in them but in
#a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

word_hash = {}

words.each do |word|
  alphabetical = word.chars.sort.join
  word_hash[word] = alphabetical
end

# s u d o c o d e
# I want to make a hash with the alpha as the key and the value as an array
# of the words in that group.

new_hash = {}

word_hash.each do |key, value|
  new_hash[value] = []
end

word_hash.each do |key, value|
  #for each pair add the key to the value in the new_hash
  new_hash[value] << key
end

new_hash.each {|key, value| p value }
