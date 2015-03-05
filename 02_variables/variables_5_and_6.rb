# 5. Look at the 2 programs following, what do they print?
#    Do they both give errors?

# x = 0
# 3.times do
#   x += 1
# end
# puts x

# This prints '3'. It adds 1 to x, 3 times where x = 0 to start.
# Then it prints the result.

# y = 0
# 3.times do
#   y+= 1
#   x = y
# end
# puts x

# This is going to give an error because x does not exist outside of the block.

# 6. What does the following error message tell you?

# NameError: undefined local variable or method `shoes' for main:Object
#   from (irb):3
#   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
#
# The program is trying to use a variable called 'shoes', which is unavailable.
