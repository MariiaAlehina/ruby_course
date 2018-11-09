puts "Name:"
name = gets.chomp
puts "Height:"
height = gets.chomp.to_i


weight = height - 110

if weight < 0
  puts "your weight is normal"
else
  puts "#{name}, you ideal weight is  #{weight}"
end
