# passing_block.rb


def take_block(number, &block)
  block.call
end

[1, 2, 3, 4, 5].each do |number|
  take_block number do
    puts "Block being called in the method! #{number}"
  end
end

# Here we are passing the current number of the iteration of the array into
# the take_block method and using it in our block.call.
