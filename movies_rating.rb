=begin
 Keeping track of all the parts of our digital lives is a pain. Now that you know how to write Ruby, however, you can make things easy for yourself!
 Let’s start by creating a program that will keep track of our movie ratings.

It’ll do one of four things: add a new movie to a hash, update the rating for an existing movie, display the movies and ratings that are already in the hash, 
or delete a movie from the hash. If it doesn’t receive one of those four commands, the program will output some kind of error message.

This project will give you a lot of room for creativity, but we know sometimes it can be a little disorienting to not have strict instructions. 
If you ever feel lost, don’t hesitate to check out the example code in this exercise to help you along! 
=end
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end



#My solution
movies = {Batman: 1, Superman: 2}
puts "what do you want to do with your movies?"
puts "--add--want to add new movie"
puts "--update--want to upddate a movie"
puts "--display--want to display all the movie"
puts "--delete--want to delete a movie"
choice = gets.chomp
case choice
when "add"
  puts "Movie to be added"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Rating of the movie"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "movie already there"  
  end  

when "update"
  puts "Enter the movie name which you want to update"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie no available"
  else
    puts "Give the new rating for the movie?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i  
  end

when "display"
  movies.each {|movie, rating| puts "#{movie}: #{rating}"}

when "delete"
  puts "Enter the movie name which you want to delete"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not available"
  else
    movies.delete(title.to_sym)
  end  

else
  puts "system crashed"
end     
