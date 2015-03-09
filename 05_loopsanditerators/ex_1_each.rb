# 1. What does the each method in the following program return
#    after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# Run in irb this returned the array => [1, 2, 3, 4, 5]
# Every expression in Ruby returns something. The code does not change anything
# except the local variable.
