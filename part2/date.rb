loop do
  print"Enter day:"
  day = gets.chomp.to_i
  break if day.class == String
  print "Enter month:"
  month = gets.chomp.to_i
  break if day.class == String
  print"Enter year:"
  year = gets.chomp.to_i
  break if day.class == String

  dm = [31, 28, 31, 30, 31, 30, 31, 30, 31, 30, 31]
  dm[1] = 29 if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  serial_nmd = day

  for i in 0...month-1
   serial_nmd += dm[i]
  end
   puts "#{serial_nmd}"
end






# puts "#{serial_nmd}"


# serial_nmd = dm.each_with_index{|value, key| dm[key] = value[0]+value[1]}
#
# # dm[0...month-1].each{|month| serial_nmd +=  dm[month]}
#
# puts "#{serial_nmd}"