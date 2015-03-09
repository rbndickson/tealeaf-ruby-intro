#Use an each_with_index method to iterate through
#an array of your choice that prints each
#index and the value of the array
mj = ['Pete', 'the', 'Cat', 'was', 'walking', 'down', 'the', 'street',
      'in', 'his', 'brand', 'new', 'white', 'shoes']

def print_value_and_index(input_array)
  input_array.each_with_index do |word, index|
    puts (index + 1).to_s + ". " + word
    #or the solution "#{index + 1}. #{word}"
  end
end

print_value_and_index(mj)
