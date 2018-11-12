
arr=(10..100).to_a

arr_5 = arr.find_all {|x| x % 5 == 0}

puts "#{arr_5}"


