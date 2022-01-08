puts "-" * 50
puts 'Hello, world!'
puts  "enter the number for table "
num = gets.to_i
puts "-" * 50
[1,2,3,4,5,6,7,8,9,10].each do |i|
  puts "#{num} * #{i} = #{i*num}"
end  
puts "-" * 50
