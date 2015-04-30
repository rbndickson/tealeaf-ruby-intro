# Write a program that checks if the sequence of
# characters "lab" exists in the following strings.
# If it does exist, print out the word.
# "laboratory", "experiment", "Pans Labyrinth",
# "elaborate", "polar bear"

# This is regex

words = ["laboratory", "experiment", "Pans Labyrinth",
          "elaborate", "polar bear"]
# for word in words do
#   if word =~ /lab/
#      puts word
#   end
# end

words.each do |word|
  if word =~ /lab/
    puts word
  end
end
