#while loop
while 2>1
  puts "thats ggod"
end  
#until
i=false
until i
  puts "marriage is god"
end
#for loop
for i in 1...21
  puts i
end  
#loop with function
i = 20
loop {
  i -= 1
  print "#{i}"
  break if i <= 0 
}
  
#the each operator  
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

#double the value of each item of the array.
odds = [1,3,5,7,9]
odds.each {|i|
  i+=i
  print i
}

#
