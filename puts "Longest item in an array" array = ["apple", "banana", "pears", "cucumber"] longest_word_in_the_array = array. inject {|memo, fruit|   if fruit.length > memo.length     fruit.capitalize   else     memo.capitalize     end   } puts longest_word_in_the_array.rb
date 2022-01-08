puts "Longest item in an array"
array = ["apple", "banana", "pears", "cucumber"]
longest_word_in_the_array = array. inject {|memo, fruit|
  if fruit.length > memo.length
    fruit.capitalize
  else
    memo.capitalize  
  end  
}
puts longest_word_in_the_array
