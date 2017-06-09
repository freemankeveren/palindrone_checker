@arr = []

def palindrone
  puts "Check to see if it is a palindrone"
  user_enters
end

def user_enters
  puts "what word or phrase would you like to check?"
  user_input = gets.chomp.to_s
  @arr << user_input
  @reverse = "#{user_input}".delete(' ').chars.reduce { |x, y| y + x }
  if @reverse == user_input.delete(' ')
    puts "this is a palindrone"
  else
    puts "this is not a palindrone"
  end

end

palindrone
