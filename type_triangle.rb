puts "First side:"
a = gets.chomp.to_i
puts "Second side:"
b = gets.chomp.to_i
puts "Тhird side:"
c = gets.chomp.to_i

side_array = [a, b, c].sort

def check_triangle(side_array)
  side_first, side_second, side_third =  side_array[0], side_array[1], side_array[2]
  uniq_count = side_array.uniq.size

  if side_third**2 == side_first**2+side_second**2
    puts "Rectangle triangle"

    if uniq_count == 2
      puts "Rectangle triangle and isosceles "
    end

  elsif uniq_count == 0
    puts " Triangle - issoceles and equilateral"

  end


end

check_triangle(side_array)