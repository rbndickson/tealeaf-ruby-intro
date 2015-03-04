# 1.

puts "Robin " + "Dickson"
puts "----------"

# 2.

puts "9876"
puts 9876 / 1000 # Gives thousands
puts 9876 % 1000 / 100 # Gives hundreds
puts 9876 % 100 / 10 # Gives tens
puts 9876 % 10 # Gives ones
puts "----------"

# 3. Write a program that uses a hash to store a list of movie titles
#    with the year they came out. Then use the puts command to make
#    your program print out the year of each movie to the screen.

movies = { tonari_no_totoro: 1988, cool_runnings: 1993,
           forrest_gump: 1994, donnie_darko: 2001,
           black_swan: 2010}

puts movies[:tonari_no_totoro]
puts movies[:cool_runnings]
puts movies[:forrest_gump]
puts movies[:donnie_darko]
puts movies[:black_swan]
puts "----------"

# 4. Use the dates from the previous example and store them in an array.
#    Then make your program output the same thing as exercise 3.

movie_dates = [1988, 1993, 1994, 2001, 2010]

puts movie_dates[0]
puts movie_dates[1]
puts movie_dates[2]
puts movie_dates[3]
puts movie_dates[4]
puts "----------"

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 2 * 1
puts 6 * 5 * 4 * 2 * 1
puts 7 * 6 * 5 * 4 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 2 * 1
puts "----------"

# 6. Write a program that calculates the squares of 3 float numbers of your
#    choosing and outputs the result to the screen.

puts 1.11 * 1.11
puts 2.0 * 2.0
puts 7.07 * 7.07
