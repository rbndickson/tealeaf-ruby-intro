# 1. Write a while loop that takes input from the user,
#    performs an action, and only stops when the user types "STOP".
#    Each loop can get info from the user.

begin
  puts "Enter something or 'STOP' to stop."
  reply = gets.chomp
  puts "'" + reply + "'" + ", you say!"
end while reply != 'STOP'
