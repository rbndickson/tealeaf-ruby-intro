#Look at Ruby's merge method. Notice that it has two versions.
#What is the difference between merge and merge!?
#Write a program that uses both and illustrate the differences.


close_family = {sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"]
          }

aunts_and_uncles = {  uncles: ["bob", "joe", "steve"],
            aunts: ["mary","sally","susan"]
          }

new_hash = close_family.merge(aunts_and_uncles)
# This method is not destructive the original hash remains unchanged.
puts "Original hash:"
p close_family
puts "New hash:"
p new_hash

second_new_hash = close_family.merge!(aunts_and_uncles)
# This method changes the original hash to result of the method.
puts "Original hash:"
p close_family
puts "New hash:"
p second_new_hash
