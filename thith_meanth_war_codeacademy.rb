print "Enter smething: "
user_input = gets.chomp
if user_input.empty?
  puts "Seems you have forgotten to enter something"
  puts "Enter somethig: "
  user_input = gets.chomp
end  
user_input.downcase!
users_original_string = user_input
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "#{user_input}"
  puts "your origianl string #{users_original_string}"
else
  print "No s found in the sentence"  
end  
