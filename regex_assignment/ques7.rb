puts "enter a string you want to check"
line=gets.chomp
pattern=/[^A-Za-z0-9]/

if line.match(pattern).length>0
  puts "the string has non alphanumeric character"
else
  puts "try again!!"

end
