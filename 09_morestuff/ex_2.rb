# What will the following print to the screen?
# What will it return?

# Answer (I did not know):

# It prints nothing because the block is never activate
# with the call method.
# It returns a proc object

def execute(&block)
  block
  #puts block #This shows the object I think.
end

execute { puts "Hello from inside the execute method!" }
