puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }



#my code
puts "your sentence: "
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
 words.each do |word|
   frequencies[word]+=1
 end  
 frequencies = frequencies.sort_by do |word, number|
   number
 end
frequencies.each {|word, number|
  puts word + " " + number.to_s
} 
