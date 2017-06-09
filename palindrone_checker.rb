arr = []

def palindrone
  puts "Check to see if it is a palindrone!
        Enter 1 to check or enter 2 to exit."
  number = gets.chomp.to_i
  case number
  when 1
    user_enters
  when 2
    puts "Goodbye."
  else
    puts "Incorrect input try again."
    palindrone
  end
end

def user_enters
  arr = []
  puts "What word or phrase would you like to check?"
  user_input = gets.chomp.to_s.downcase
  arr << user_input
  reverse = "#{user_input}".delete(' ').chars.reduce { |x, y| y + x }
  if reverse == user_input.delete(' ')
    puts "This is a palindrone!"
    palindrone
  else
    puts "This is not a palindrone."
    palindrone
  end
end
palindrone
