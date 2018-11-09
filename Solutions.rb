puts "First variable:"
variable_a = gets.chomp.to_i
puts "Second variable:"
variable_b = gets.chomp.to_i
puts "Тhird variable:"
variable_c = gets.chomp.to_i



def solution(variable_a, variable_b, variable_c)
  discriminant = variable_b**2 - 4*variable_a*variable_c

  if discriminant > 0
    x_1 = (-(variable_b) + Math.sqrt(discriminant))/2*variable_a
    x_2 = (-(variable_b) - Math.sqrt(discriminant))/2*variable_a
    puts "Discriminant - #{discriminant} Solutions #{x_1} and #{x_2}"

  elsif discriminant = 0
    x = -(variable_b) /2*variable_a
    puts "Discriminant - #{discriminant} Solutions #{x}"

  else discriminant < 0
  puts " Without solution"

  end
end


solution(variable_a, variable_b, variable_c)