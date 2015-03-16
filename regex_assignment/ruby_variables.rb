def count_variable(filename)
  global_variable_count=0
  instance_variable_count=0
  local_variable_count=0

  File.open(filename).readlines.each do |line|
    line=line.lstrip.split(" ")
    if  line[0]!=nil && line[0].match(/^[@]{2}/)
      puts line[0][2,line[0].length-1]
      global_variable_count=global_variable_count+1
    end
    if  line[0]!=nil && line[0].match(/^[@]{1}(\w+)/)
      puts line[0][1,line[0].length-1]
      instance_variable_count=instance_variable_count+1
    end
    if  line[0]!=nil && line[0].match(/^(w+)=/) 
      local_variable_count=local_variable_count+1
    end
  end
puts "local variable: #{local_variable_count} instance variable: #{instance_variable_count} global variable:  #{global_variable_count}"
end



puts "Enter the filename:"
filename=gets.chomp
if filename.match(/.rb$/)
  count_variable(filename)
else
  puts "enter correct filename"
end



